<?php

namespace App\Http\Controllers;

use App\Models\BannerModel;
use App\Models\CarColorModel;
use App\Models\CarManufacturerModel;
use App\Models\CarVariationsModel;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class CarColorController extends Controller
{
    public function index()
    {
        $data['page_heading'] = 'Cars';
        $data['cars_manufacture'] = CarManufacturerModel::get();
        $data['cars_colors'] = CarColorModel::with('get_cars')->get();
        return view('admin.cars.colors.index',$data);
    }

    public function save(Request $request)
    {
        $banner = new CarColorModel() ;
        $banner->color = $request->name;
        $banner->car_id = $request->car_id;
        $banner->status = '1';

        if($banner->save()){
            return redirect('admin/all-cars-color');
        }

    }

    public function status(Request $request){
        $category = CarColorModel::find($request->id);
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
        $delete = CarColorModel::where('id', $id)->delete();

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
        $data['page_heading'] = 'Banner';
        $data['all_cars'] = CarManufacturerModel::get();
        $data['color'] = CarColorModel::find($id);
        return view('admin.cars.colors.edit',$data);
    }

    function update(Request $request){
        $banner = CarColorModel::find($request->id);
        $banner->color = $request->name;
        $banner->car_id = $request->car_id;
        $banner->status = '1';
        if($banner->save()){
            return redirect('/admin/all-cars-color');
        }
    }

    public function fetchColors(Request $request)
    {
//        print_r($request->all());die;
        $colors = CarColorModel::select('id', 'color')
            ->where('car_id',$request->manufactureId)->get();
        return response()->json($colors);
    }

    public function fetchVariations(Request $request)
    {
        $variations = CarVariationsModel::select('id', 'variation', 'price', 'mrp')
            ->where('color_id', $request->input('colorId'))
            ->get();

        return response()->json(['variations' => $variations]);
    }

    public function fetchVariationDetails(Request $request)
    {
        $variation = CarVariationsModel::select('id', 'price', 'mrp')
            ->where('id', $request->input('variationId'))
            ->first();

        return response()->json(['variation' => $variation]);
    }
}
