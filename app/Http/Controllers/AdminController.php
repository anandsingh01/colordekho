<?php

namespace App\Http\Controllers;

use App\Models\Enquiry;
use App\Models\Order;
use App\Models\Product;
use Auth;
use Hash;
use Illuminate\Support\Facades\DB;
use Session;
use App\Models\User;

use Illuminate\Http\Request;

class AdminController extends Controller
{

    public function __construct()
    {
//        $this->middleware('admin');
    }

    public function index()
    {
        if(Auth::check()) {
            if (Auth::user()->role == '1') {
//                echo "login";
                return redirect(url('admin/dashboard'));
            }
        }else{
//            echo "nothing";
            return redirect('/login');
        }
    }
    public function salesReport(Request $request)
    {
        $bestSellingProducts = DB::table('order_product')
            ->select('product_id', DB::raw('SUM(quantity) as total_sales'))
            ->groupBy('product_id')
            ->orderByDesc('total_sales')
            ->limit(5)
            ->get();

        $bestSellingProductNames = [];
        $bestSellingProductSales = [];

        foreach ($bestSellingProducts as $product) {
            $productData = DB::table('products')->find($product->product_id);
            if ($productData) {
                $bestSellingProductNames[] = $productData->title;
                $bestSellingProductSales[] = $product->total_sales;
            }
        }

        // Fetch revenue data
        $revenueData = Order::select(DB::raw('DATE(created_at) as order_date'), DB::raw('SUM(final_amount) as total_revenue'))
            ->where('status', 1) // Assuming 1 represents "paid" status
            ->groupBy('order_date')
            ->get();

        $revenueDates = [];
        $revenueAmounts = [];

        foreach ($revenueData as $data) {
            $revenueDates[] = date('d-m-Y', strtotime($data->order_date));
            $revenueAmounts[] = $data->total_revenue;
        }

        return response()->json([
            'bestSellingProductNames' => $bestSellingProductNames,
            'bestSellingProductSales' => $bestSellingProductSales,
            'revenueDates' => $revenueDates,
            'revenueAmounts' => $revenueAmounts,
        ]);
    }



    function dashboard(Request $request){
        if(Auth::check()) {
            if(Auth::user()->role == '1') {
                // Fetch best selling products data
                $bestSellingProducts = DB::table('order_product')
                    ->select('product_id', DB::raw('SUM(quantity) as total_sales'))
                    ->groupBy('product_id')
                    ->orderByDesc('total_sales')
                    ->limit(5)
                    ->get();

                $bestSellingProductNames = [];
                $bestSellingProductSales = [];

                foreach ($bestSellingProducts as $product) {
                    $productData = DB::table('products')->find($product->product_id);
                    if ($productData) {
                        $bestSellingProductNames[] = $productData->title;
                        $bestSellingProductSales[] = $product->total_sales;
                    }
                }

                $ddd = [
                    'bestSellingProductNames' => array_values($bestSellingProductNames),
                    'bestSellingProductSales' => array_values($bestSellingProductSales),
                ];

//                print_r($ddd);die;

                return view('admin.dashboard', [
                    'bestSellingProductNames' => array_values($bestSellingProductNames),
                    'bestSellingProductSales' => array_values($bestSellingProductSales),
                    'bestSellingProducts' => $bestSellingProducts
                ]);
            } else {
                abort('403', 'You Are Not Admin !!! Access Denied');
            }
        } else {
            return redirect(route('login'));
        }
    }


    function my_profile(){
        if(Auth::check()){
            if(Auth::user()->role == 1){
                $data['password'] = Auth::user()->salt_password;
                return view('admin.my_profile',$data);
            }else{
                abort('403','Your Are Not Admin !!! Access Denied');
            }
        }else{
            return redirect(route('login'));
        }
    }

    function update_profile(Request $request){
        $sql = User::find(Auth::user()->id);
        $sql->password = Hash::make($request->password);
        $sql->salt_password = $request->password;
        if($sql->save()){
            Session::flash('success','Profile Updated');
            return redirect(url('admin/my-profile'));
        }else{
            Session::flash('error','Profile not Updated');
            return redirect(url('admin/my-profile'));
        }
    }

    function all_enquiry(){
        $data['page_heading'] = 'Enquiry';
        $data['enquiry'] = Enquiry::orderBy('id','DESc')->get();
        return view('admin.enquiry',$data);
    }

}
