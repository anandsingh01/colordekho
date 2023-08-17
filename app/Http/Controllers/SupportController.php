<?php

namespace App\Http\Controllers;

use App\Models\SupportModel;
use App\Models\WhoWeAre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SupportController extends Controller
{
    public function support_us()
    {
        if(!Auth::check()){
            return redirect(url('login'));
        }
        $data['page_heading'] = 'Support';
        $data['support'] = SupportModel::first();
//        print_r($data);die;
        return view('admin.support.support',$data);
    }

    public function updatesupport(Request $request)
    {
        if(!Auth::check()){
            return redirect(url('login'));
        }
        $data = $request->all();
//        print_r($data);die;
        $foundernote = SupportModel::find($request->id);
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

        $foundernote->right_section_heading = $request->right_section_heading;
        $foundernote->right_section_content = $request->right_section_content;
        $foundernote->left_section_heading = $request->left_section_heading;
        $foundernote->left_section_content = $request->left_section_content;
        $foundernote->left_section_link = $request->left_section_link;
        $foundernote->right_section_link = $request->right_section_link;
        $foundernote->volunteer_section_heading = $request->volunteer_section_heading;
        $foundernote->volunteer_section_content = $request->volunteer_section_content;

        if($request->hasFile('banner_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['banner_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['banner_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $foundernote->banner_image = $wdws_image_1;
        }
        if($request->hasFile('left_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['left_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['left_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $foundernote->left_image = $wdws_image_1;
        }
        if($request->hasFile('right_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['right_image']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['right_image']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->right_image = $wdws_image_2;
        }
        if($request->hasFile('volunteer_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['volunteer_image']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['volunteer_image']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->volunteer_image = $wdws_image_2;
        }

        if($foundernote->save()){
            \Illuminate\Support\Facades\Session::flash('success','Founder note updated');
            return redirect(url('admin/support-us'));
        }
    }
}
