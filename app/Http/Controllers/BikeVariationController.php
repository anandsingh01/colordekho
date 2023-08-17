<?php

namespace App\Http\Controllers;

use App\Models\BannerModel;
use App\Models\BikeColorModel;
use App\Models\CarColorModel;
use App\Models\CarManufacturerModel;
use App\Models\BikeVariationsModel;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class BikeVariationController extends Controller
{
    public function index()
    {
        $data['page_heading'] = 'Bikes';
        $data['all_bike_variations'] = BikeVariationsModel::with('get_colors')->paginate(10000);
        $data['bike_colors'] = BikeColorModel::get();
        return view('admin.bikes.variations.index',$data);
    }

    public function save(Request $request)
    {
        $banner = new BikeVariationsModel() ;
        $banner->variation = $request->variation;
        $banner->color_id = $request->color_id;
        $banner->price = $request->price;
        $banner->mrp = $request->mrp;
        $banner->status = '1';

        if($banner->save()){
            return redirect('admin/all-bikes-variations');
        }

    }

    public function status(Request $request){
        $category = BikeVariationsModel::find($request->id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }

    public function destroy($id)
    {
        $delete = BikeVariationsModel::where('id', $id)->delete();

        if ($delete == 1) {
            $success = true;
            $message = " deleted successfully";
        } else {
            $success = true;
            $message = " not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    function edit($id){
        $data['page_heading'] = 'Car Variations';

        $data['variations'] = BikeVariationsModel::find($id);

       $data['bike_colors'] = BikeColorModel::get();


        return view('admin.bikes.variations.edit',$data);
    }

    function update(Request $request){

        $banner = BikeVariationsModel::find($request->id);
        $banner->variation = $request->variation;
        $banner->color_id = $request->color_id;
        $banner->price = $request->price;
        $banner->mrp = $request->mrp;
        $banner->status = '1';

        if($banner->save()){
            return redirect('admin/all-bikes-variations');
        }

    }
}
