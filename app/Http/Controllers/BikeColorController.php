<?php

namespace App\Http\Controllers;

use App\Models\BannerModel;
use App\Models\BikeColorModel;
use App\Models\BikeManufacturerModel;
use App\Models\BikeVariationsModel;
use App\Models\CarColorModel;
use App\Models\CarVariationsModel;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class BikeColorController extends Controller
{
    public function index()
    {
        $data['page_heading'] = 'Bikes';
        $data['bike_manufacturer'] = BikeManufacturerModel::get();
        $data['bike_colors'] = BikeColorModel::with('get_bikes')->get();
        return view('admin.bikes.colors.index',$data);
    }

    public function save(Request $request)
    {
        $banner = new BikeColorModel() ;
        $banner->color = $request->name;
        $banner->bike_id = $request->bike_id;
        $banner->status = '1';

        if($banner->save()){
            return redirect('admin/all-bikes-color');
        }

    }

    public function status(Request $request){
        $category = BikeColorModel::find($request->id);
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
        $delete = BikeColorModel::where('id', $id)->delete();

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
        $data['page_heading'] = 'Bikes';
        $data['bike_manufacturer'] = BikeManufacturerModel::get();
        $data['color'] = BikeColorModel::find($id);
        return view('admin.bikes.colors.edit',$data);
    }

    function update(Request $request){
        $banner = BikeColorModel::find($request->id);
        $banner->color = $request->name;
        $banner->bike_id = $request->bike_id;
        $banner->status = '1';
        if($banner->save()){
            return redirect('/admin/all-bikes-color');
        }

    }

    public function fetchBikeColors(Request $request)
    {
//        print_r($request->all());die;
        $colors = BikeColorModel::select('id', 'color')
            ->where('bike_id',$request->bike_manufacture)->get();
        return response()->json($colors);
    }

    public function fetchBikeVariations(Request $request)
    {
//        print_r($request->all());die;
        $variations = BikeVariationsModel::select('id', 'variation', 'price', 'mrp')
            ->where('color_id', $request->input('colorId'))
            ->get();

        return response()->json(['variations' => $variations]);
    }

    public function fetchBikeVariationDetails(Request $request)
    {
        $variation = BikeVariationsModel::select('id', 'price', 'mrp')
            ->where('id', $request->input('variationId'))
            ->first();

        return response()->json(['variation' => $variation]);
    }
}
