<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Support\Str;
use Session;
use App\Models\Goals;
use App\Models\ServiceModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ServiceController extends Controller
{
    function index(){
        if(Auth::check()){
            $data['page_heading'] = 'Services';
            $data['service'] = ServiceModel::get();
            $data['category'] = Category::get();
            return view('admin.services.index',$data);
        }else{
            return redirect(url('/login'));
        }
    }

    function add (){
        $data['page_heading'] = 'Services';
        $data['category'] = Category::get();
        $data['service'] = ServiceModel::get();
        return view('admin.services.create',$data);
    }

    function save(Request $request){
        $project = new ServiceModel();
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

// Create a new instance of ServiceModel
        $service = new ServiceModel();

// Assign values from the array to the corresponding attributes
        $service->service_name = $request->input('service_name');
        $service->service_summary = $request->input('service_summary');
        $service->service_description = $request->input('service_description');
        $service->block_text_1 = $request->input('block_text_1');
        $service->block_summary_1 = $request->input('block_summary_1');
        $service->block_text_2 = $request->input('block_text_2');
        $service->block_summary_2 = $request->input('block_summary_2');
        $service->block_text_3 = $request->input('block_text_3');
        $service->block_summary_3 = $request->input('block_summary_3');
        $service->service_category = $request->input('service_category');
        $service->status = '1';

        // Generate a unique URL slug based on the service name
        $urlSlug = Str::slug($service->service_name);
        $service->url_slug = $urlSlug;

// Save the $service object to persist the data in the database
        $service->save();

// Handle the uploaded files

        $destinationPath = $filename2.'serve'; // upload path

        if ($request->hasFile('banner_image')) {
            $bannerImage = $request->file('banner_image');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for banner_image
            $fileName = $bannerImage->getClientOriginalName();
            $bannerImage->move($destinationPath, $fileName);
            $service->banner_image = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('service_image')) {
            $serviceImage = $request->file('service_image');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for service_image
            $fileName = $serviceImage->getClientOriginalName();
            $serviceImage->move($destinationPath, $fileName);
            $service->service_image = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_bg_image_1')) {
            $blockBgImage1 = $request->file('block_bg_image_1');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for block_bg_image_1
            $fileName = $blockBgImage1->getClientOriginalName();
            $blockBgImage1->move($destinationPath, $fileName);
            $service->block_bg_image_1 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_icon_image_1')) {
            $blockIconImage1 = $request->file('block_icon_image_1');
//            $destinationPath = $destinationPath2; // Replace with the actual destination path for block_icon_image_1
            $fileName = $blockIconImage1->getClientOriginalName();
            $blockIconImage1->move($destinationPath, $fileName);
            $service->block_icon_image_1 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_bg_image_2')) {
            $blockBgImage2 = $request->file('block_bg_image_2');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for block_bg_image_1
            $fileName = $blockBgImage2->getClientOriginalName();
            $blockBgImage2->move($destinationPath, $fileName);
            $service->block_bg_image_2 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_icon_image_2')) {
            $blockIconImage2 = $request->file('block_icon_image_2');
//            $destinationPath = $destinationPath2; // Replace with the actual destination path for block_icon_image_1
            $fileName = $blockIconImage2->getClientOriginalName();
            $blockIconImage2->move($destinationPath, $fileName);
            $service->block_icon_image_2 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_bg_image_3')) {
            $blockBgImage3 = $request->file('block_bg_image_3');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for block_bg_image_1
            $fileName = $blockBgImage3->getClientOriginalName();
            $blockBgImage3->move($destinationPath, $fileName);
            $service->block_bg_image_3 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_icon_image_3')) {
            $blockIconImage3 = $request->file('block_icon_image_3');
//            $destinationPath = $destinationPath2; // Replace with the actual destination path for block_icon_image_1
            $fileName = $blockIconImage3->getClientOriginalName();
            $blockIconImage3->move($destinationPath, $fileName);
            $service->block_icon_image_3 = $destinationPath . '/' . $fileName;
        }

// Repeat the above block for block_bg_image_2, block_icon_image_2, block_bg_image_3, block_icon_image_3

        if ($request->hasFile('upload_gallery')) {
            $galleryImages = $request->file('upload_gallery');
//            $destinationPath = $destinationPath3; // Replace with the actual destination path for upload_gallery
            $galleryPaths = [];

            foreach ($galleryImages as $galleryImage) {
                $fileName = $galleryImage->getClientOriginalName();
                $galleryImage->move($destinationPath, $fileName);
                $galleryPaths[] = $destinationPath . '/' . $fileName;
            }

            $service->upload_gallery = json_encode($galleryPaths);
        }



        if($service->save()){
            Session::flash('success','Saved');
            return redirect(url('admin/all-services'));
        }

    }


    function edit($id){
        $data['page_heading'] = 'Service';
        $data['category'] = Category::get();
        $data['services'] = ServiceModel::get();
        $data['service'] = ServiceModel::find($id);
        return view('admin.services.edit',$data);
    }


    function update(Request $request){
        $service = ServiceModel::find($request->id);
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

// Assign values from the array to the corresponding attributes
        $service->service_name = $request->input('service_name');
        $service->service_summary = $request->input('service_summary');
        $service->service_description = $request->input('service_description');
        $service->block_text_1 = $request->input('block_text_1');
        $service->block_summary_1 = $request->input('block_summary_1');
        $service->block_text_2 = $request->input('block_text_2');
        $service->block_summary_2 = $request->input('block_summary_2');
        $service->block_text_3 = $request->input('block_text_3');
        $service->block_summary_3 = $request->input('block_summary_3');
        $service->service_category = $request->input('service_category');
        $service->status = '1';

        // Generate a unique URL slug based on the service name
        $urlSlug = Str::slug($service->service_name);
        $service->url_slug = $urlSlug;

// Save the $service object to persist the data in the database
        $service->save();

// Handle the uploaded files

        $destinationPath = $filename2.'serve'; // upload path

        if ($request->hasFile('banner_image')) {
            $bannerImage = $request->file('banner_image');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for banner_image
            $fileName = $bannerImage->getClientOriginalName();
            $bannerImage->move($destinationPath, $fileName);
            $service->banner_image = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('service_image')) {
            $serviceImage = $request->file('service_image');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for service_image
            $fileName = $serviceImage->getClientOriginalName();
            $serviceImage->move($destinationPath, $fileName);
            $service->service_image = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_bg_image_1')) {
            $blockBgImage1 = $request->file('block_bg_image_1');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for block_bg_image_1
            $fileName = $blockBgImage1->getClientOriginalName();
            $blockBgImage1->move($destinationPath, $fileName);
            $service->block_bg_image_1 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_icon_image_1')) {
            $blockIconImage1 = $request->file('block_icon_image_1');
//            $destinationPath = $destinationPath2; // Replace with the actual destination path for block_icon_image_1
            $fileName = $blockIconImage1->getClientOriginalName();
            $blockIconImage1->move($destinationPath, $fileName);
            $service->block_icon_image_1 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_bg_image_2')) {
            $blockBgImage2 = $request->file('block_bg_image_2');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for block_bg_image_1
            $fileName = $blockBgImage2->getClientOriginalName();
            $blockBgImage2->move($destinationPath, $fileName);
            $service->block_bg_image_2 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_icon_image_2')) {
            $blockIconImage2 = $request->file('block_icon_image_2');
//            $destinationPath = $destinationPath2; // Replace with the actual destination path for block_icon_image_1
            $fileName = $blockIconImage2->getClientOriginalName();
            $blockIconImage2->move($destinationPath, $fileName);
            $service->block_icon_image_2 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_bg_image_3')) {
            $blockBgImage3 = $request->file('block_bg_image_3');
//            $destinationPath = $destinationPath1; // Replace with the actual destination path for block_bg_image_1
            $fileName = $blockBgImage3->getClientOriginalName();
            $blockBgImage3->move($destinationPath, $fileName);
            $service->block_bg_image_3 = $destinationPath . '/' . $fileName;
        }

        if ($request->hasFile('block_icon_image_3')) {
            $blockIconImage3 = $request->file('block_icon_image_3');
//            $destinationPath = $destinationPath2; // Replace with the actual destination path for block_icon_image_1
            $fileName = $blockIconImage3->getClientOriginalName();
            $blockIconImage3->move($destinationPath, $fileName);
            $service->block_icon_image_3 = $destinationPath . '/' . $fileName;
        }

// Repeat the above block for block_bg_image_2, block_icon_image_2, block_bg_image_3, block_icon_image_3

        if ($request->hasFile('upload_gallery')) {
            $galleryImages = $request->file('upload_gallery');
//            $destinationPath = $destinationPath3; // Replace with the actual destination path for upload_gallery
            $galleryPaths = [];

            foreach ($galleryImages as $galleryImage) {
                $fileName = $galleryImage->getClientOriginalName();
                $galleryImage->move($destinationPath, $fileName);
                $galleryPaths[] = $destinationPath . '/' . $fileName;
            }

            $service->upload_gallery = json_encode($galleryPaths);
        }



        if($service->save()){
            Session::flash('success','Saved');
            return redirect(url('admin/all-services'));
        }

    }


    public function destroy($id)
    {
        $delete = ProjectModel::where('id', $id)->delete();
        if ($delete == 1) {
            $success = true;
            $message = "Deleted";
        } else {
            $success = true;
            $message = "not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    public function change_status(Request $request){
        $category = ServiceModel::find($request->id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }

    public function show_on_homet_status(Request $request){
        $category = ServiceModel::find($request->id);
        if($request->show_on_home == '1'){
            $category->show_on_home = '1';
        }else{
            $category->show_on_home = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }
}
