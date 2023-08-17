<?php

namespace App\Http\Controllers;

use App\Models\BannerModel;
use Illuminate\Http\Request;
use \App\Models\Team;
use Illuminate\Support\Facades\Session;
use Intervention\Image\Facades\Image;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banner = BannerModel::get();
        $page_heading = 'Banner';
        return view('admin.banner.index',compact('banner','page_heading'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function add()
    {
        $page_heading = 'Banner';
        return view('admin.banner.create', compact('page_heading'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save(Request $request)
    {
        $data = $request->all();
        $year = date("Y");
        $month = date("m");
        $filename = "uploads/blogs";
        $filename2 = "uploads/blogs/";
        # MAKE DIRECTORY IF NOT EXISTS STARTS
        if(file_exists($filename)){
            if(file_exists($filename2)==false){
                mkdir($filename2,777, true);
            }
        }else{
            mkdir($filename, 777,true);
            mkdir($filename2,777, true);
        }

        $banner = new BannerModel() ;
        $banner->banner_heading = $request->banner_heading;
        $banner->banner_subheading = $request->banner_subheading;
        $banner->banner_link = $request->banner_link;
        $banner->banner_text = $request->banner_text;
        $banner->display_area = $request->display_area;
        $banner->status = '1';

        if ($request->hasFile('banner')) {
            $image = $request->file('banner');

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
            $banner->banner = $webpImagePath;

            // Optionally, you can also save the original image path if needed
            // $offer->image = 'images/' . $imageName;
        }


        if($banner->save()){
            return redirect('/admin/all-banner');
        }

    }

    public function status(Request $request){
        $category = BannerModel::find($request->brand_id);
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
        $delete = BannerModel::where('id', $id)->delete();

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
        $page_heading = 'Banner';
        $banner = BannerModel::find($id);
        return view('admin.banner.edit',compact('banner','page_heading'));
    }

    function update(Request $request){
        $banner = BannerModel::find($request->id);
        $data = $request->all();
        $year = date("Y");
        $month = date("m");
        $filename = "uploads/blogs";
        $filename2 = "uploads/blogs/";
        # MAKE DIRECTORY IF NOT EXISTS STARTS
        if(file_exists($filename)){
            if(file_exists($filename2)==false){
                mkdir($filename2,777, true);
            }
        }else{
            mkdir($filename, 777,true);
            mkdir($filename2,777, true);
        }
        $banner->banner_heading = $request->banner_heading;
        $banner->banner_subheading = $request->banner_subheading;
        $banner->banner_link = $request->banner_link;
        $banner->banner_text = $request->banner_text;
        $banner->display_area = $request->display_area;
        $banner->status = '1';

// Check if the image file was uploaded
        if ($request->hasFile('banner')) {
            $image = $request->file('banner');

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
            $banner->banner = $webpImagePath;

            // Optionally, you can also save the original image path if needed
            // $offer->image = 'images/' . $imageName;
        }

        if($banner->save()){
            return redirect('/admin/all-banner');
        }

    }


}
