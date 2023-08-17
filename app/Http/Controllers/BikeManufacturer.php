<?php

namespace App\Http\Controllers;

use App\Models\BannerModel;
use App\Models\BikeManufacturerModel;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class BikeManufacturer extends Controller
{
    public function index()
    {
        $data['page_heading'] = 'Cars';
        $data['bike_manufacturer'] = BikeManufacturerModel::get();
        return view('admin.bikes.index',$data);
    }

    public function save(Request $request)
    {

        $banner = new BikeManufacturerModel() ;
        $banner->name = $request->name;
        $banner->status = '1';

        if($banner->save()){
            return redirect('/admin/all-bikes');
        }

    }

    public function status(Request $request){
        $category = BikeManufacturerModel::find($request->id);
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
        $delete = BikeManufacturerModel::where('id', $id)->delete();

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
        $data['cars'] = BikeManufacturerModel::find($id);
        return view('admin.bikes.edit',$data);
    }

    function update(Request $request){
        $banner = BikeManufacturerModel::find($request->id);
        $banner->name = $request->name;
        $banner->status = '1';

        if ($request->hasFile('image')) {
            $image = $request->file('image');

            // Define the path where you want to store the uploaded image
            $path = 'images';

            // Generate a unique name for the image to avoid overwriting
            $imageName = time() . '_' . $image->getClientOriginalName();

            // Move the uploaded image to the specified path
            $image->move($path, $imageName);

            // Convert the image to WebP format and save it with a new name
            $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
            Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

            // Save the image name or path to your database as needed
            // For example, you can store the image name in a 'image' column of the offers table
            $banner->image = $webpImagePath;

            // Optionally, you can also save the original image path if needed
            // $offer->image = 'images/' . $imageName;
        }

        if($banner->save()){
            return redirect('/admin/all-bikes');
        }

    }
}
