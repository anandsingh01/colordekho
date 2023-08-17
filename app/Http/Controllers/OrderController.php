<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use App\Models\ProductReturn;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    function index(){
        $data['page_heading'] = 'All Orders';
        $data['orders'] = Order::orderBy('id','DESC')->get();
        return view('admin.orders.all-orders',$data);
    }

    function view_order($id){
        $data['page_heading'] = 'View Order';
        $data['orders'] = Order::with('get_order_products')->find($id);
//        print_r($data);die;
        return view('admin.orders.view-order',$data);
    }

    public function returnProduct(Request $request)
    {
        // Create a new ProductReturn record

        $order = Order::where('order_id',$request->order_id)->update(['status' => '3']);

        $productReturn = new ProductReturn;
        $productReturn->order_id = $request->order_id;
        $productReturn->reason = $request->return_reason;
        $productReturn->description = $request->return_description;
        $productReturn->status = 0;
        $productReturn->save();

        // Redirect back with a success message
        return redirect()->back()->with('success', 'Return request submitted successfully.');
    }

    function return_refunds(){
        $data['page_heading'] = 'All Returns';

        // getting from order primary id
        $data['orders'] = ProductReturn::with('return_refunds')->get();
        return view('admin.orders.return',$data);
    }

    function view_return_order($id){
        $data['page_heading'] = 'View Returns';
        $data['orders'] = Order::with('get_order_products','buyer_details','get_refund_data')
            ->where('order_id',$id)->first();
        return view('admin.orders.return-order',$data);
    }

    function refund_status(Request $request){
        print_r($request->all());
        if($request->status == 1){
            // accept return on order table
            $order = Order::where('order_id',$request->order_id)->update(['status' => '4']);
        }


        if($request->status == 2){
            // reject return on order table
            $order = Order::where('order_id',$request->order_id)->update(['status' => '4']);
        }


        $category = ProductReturn::where('id',$request->id)->update(['status'=> $request->status]);

        return response()->json(['success'=>' status change successfully.']);

    }


}
