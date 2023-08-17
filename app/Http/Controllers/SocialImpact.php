<?php

namespace App\Http\Controllers;

use App\Models\CoreCompentancy;
use App\Models\SocialImpactModel;
use Illuminate\Http\Request;

class SocialImpact extends Controller
{
    function overview(){
        $data['page_heading'] = 'Social Impact';
        $data['core_comp'] = \App\Models\SocialImpactModel::where('type',$_GET['type'])
            ->orderBy('id','DESC')
            ->first();
        return view('admin.social-impacts.overview',$data);
    }

    function update_overview (Request $request){

        $core = \App\Models\SocialImpactModel::find($request->id);
        $core->text = $request->text;
        $core->type = $request->sustainability_type;

        $data = $request->all();

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
        $destinationPath = $filename2.'serve'; // upload path

        if($request->hasFile('banner_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['banner_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['banner_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $core->banner_image = $wdws_image_1;
        }

        if ($request->hasFile('upload_gallery')) {
            $galleryImages = $request->file('upload_gallery');
//            $destinationPath = $destinationPath3; // Replace with the actual destination path for upload_gallery
            $galleryPaths = [];

            foreach ($galleryImages as $galleryImage) {
                $fileName = $galleryImage->getClientOriginalName();
                $galleryImage->move($destinationPath, $fileName);
                $galleryPaths[] = $destinationPath . '/' . $fileName;
            }

            $core->gallery = json_encode($galleryPaths);
        }

        if($core->save()){
            return redirect($_SERVER['HTTP_REFERER']);
        }
    }

    function approach(){
        $data['page_heading'] = 'Sustainability Approach';
        $data['core_comp'] = \App\Models\SustainabilityApproach::first();
        return view('admin.offers.approach',$data);
    }

    function update_approach (Request $request){
        $core = \App\Models\SustainabilityApproach::find($request->id);
        $core->text = $request->text;

        $data = $request->all();

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
        $destinationPath = $filename2.'serve'; // upload path

        if($request->hasFile('banner_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['banner_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['banner_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $core->banner_image = $wdws_image_1;
        }

        if ($request->hasFile('upload_gallery')) {
            $galleryImages = $request->file('upload_gallery');
//            $destinationPath = $destinationPath3; // Replace with the actual destination path for upload_gallery
            $galleryPaths = [];

            foreach ($galleryImages as $galleryImage) {
                $fileName = $galleryImage->getClientOriginalName();
                $galleryImage->move($destinationPath, $fileName);
                $galleryPaths[] = $destinationPath . '/' . $fileName;
            }

            $core->gallery = json_encode($galleryPaths);
        }

        if($core->save()){
            return redirect($_SERVER['HTTP_REFERER']);
        }
    }

    function stewardship(){
        $data['page_heading'] = 'Sustainability Approach';
        $data['core_comp'] = \App\Models\SustainabilityStewardship::first();
        return view('admin.offers.stewardship',$data);
    }

    function update_stewardship (Request $request){
        $core = \App\Models\SustainabilityStewardship::find($request->id);
        $core->text = $request->text;

        $data = $request->all();

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
        $destinationPath = $filename2.'serve'; // upload path

        if($request->hasFile('banner_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['banner_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['banner_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $core->banner_image = $wdws_image_1;
        }

        if ($request->hasFile('upload_gallery')) {
            $galleryImages = $request->file('upload_gallery');
//            $destinationPath = $destinationPath3; // Replace with the actual destination path for upload_gallery
            $galleryPaths = [];

            foreach ($galleryImages as $galleryImage) {
                $fileName = $galleryImage->getClientOriginalName();
                $galleryImage->move($destinationPath, $fileName);
                $galleryPaths[] = $destinationPath . '/' . $fileName;
            }

            $core->gallery = json_encode($galleryPaths);
        }

        if($core->save()){
            return redirect($_SERVER['HTTP_REFERER']);
        }
    }
}
