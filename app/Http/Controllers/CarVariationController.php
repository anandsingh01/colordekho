<?php

namespace App\Http\Controllers;

use App\Models\BannerModel;
use App\Models\CarColorModel;
use App\Models\CarManufacturerModel;
use App\Models\CarVariationsModel;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class CarVariationController extends Controller
{
    public function index()
    {
        $data['page_heading'] = 'Cars';
        $data['all_cars_variations'] = CarVariationsModel::with('get_colors')->paginate(10000);
        $data['all_colors'] = CarColorModel::get();
        return view('admin.cars.variations.index',$data);
    }

    public function save(Request $request)
    {
//        print_r($request->all());die;
        $banner = new CarVariationsModel() ;
        $banner->variation = $request->variation;
        $banner->color_id = $request->color_id;
        $banner->price = $request->price;
        $banner->mrp = $request->mrp_price;
        $banner->status = '1';

        if($banner->save()){
            return redirect('admin/all-cars-variations');
        }

    }

    public function status(Request $request){
        $category = CarVariationsModel::find($request->id);
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
        $delete = CarVariationsModel::where('id', $id)->delete();

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
        $data['all_colors'] = CarColorModel::get();
        $data['variations'] = CarVariationsModel::find($id);
        return view('admin.cars.variations.edit',$data);
    }

    function update(Request $request){
        $banner = CarVariationsModel::find($request->id);
        $banner->variation = $request->variation;
        $banner->color_id = $request->color_id;
        $banner->price = $request->price;
        $banner->mrp = $request->mrp_price;
        $banner->status = '1';

        if($banner->save()){
            return redirect('admin/all-cars-variations');
        }

    }
}
