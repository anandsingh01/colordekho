<?php

namespace App\Http\Controllers;

use App\Models\About_models;
use App\Models\AboutModels;
use App\Models\CoreCompentancy;
use App\Models\FounderModel;
use App\Models\MissionModel;
use Illuminate\Http\Request;
use Session;
use DB;
use Auth;
use \App\Models\WhoWeAre;
class AboutController extends Controller
{

    public function who_we_are()
    {
        if(!Auth::check()){
            return redirect(url('login'));
        }
        $data['page_heading'] = 'About';
        $data['who_we_are'] = AboutModels::first();
        return view('admin.about.whoweare',$data);
    }

    public function updatewhoweare(Request $request)
    {
        if(!Auth::check()){
            return redirect(url('login'));
        }
        $data = $request->all();
//        print_r($data);die;
        $foundernote = AboutModels::find($request->id);
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

        $foundernote->about_description = $request->about_description;
        $foundernote->block_text_1 = $request->block_text_1;
        $foundernote->block_summary_1 = $request->block_summary_1;
        $foundernote->block_text_2 = $request->block_text_2;
        $foundernote->block_summary_2 = $request->block_summary_2;
        $foundernote->block_text_3 = $request->block_text_3;
        $foundernote->block_summary_3 = $request->block_summary_3;
        $foundernote->why_choose_description = $request->why_choose_description;
        $foundernote->counter_text_1 = $request->counter_text_1;
        $foundernote->counter_summary_1 = $request->counter_summary_1;
        $foundernote->counter_text_2 = $request->counter_text_2;
        $foundernote->counter_summary_2 = $request->counter_summary_2;
        $foundernote->counter_text_3 = $request->counter_text_3;
        $foundernote->counter_summary_3 = $request->counter_summary_3;

        if($request->hasFile('banner_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['banner_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['banner_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $foundernote->banner_image = $wdws_image_1;
        }
        if($request->hasFile('about_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['about_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['about_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $foundernote->about_image = $wdws_image_1;
        }
        if($request->hasFile('block_bg_image_1')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_bg_image_1']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_bg_image_1']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->block_bg_image_1 = $wdws_image_2;
        }

        if($request->hasFile('block_icon_image_1')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_icon_image_1']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_icon_image_1']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->block_icon_image_1 = $wdws_image_2;
        }
//        print_r($wdws_image_3);die;

        if($request->hasFile('block_bg_image_2')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_bg_image_2']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_bg_image_2']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->block_bg_image_2 = $wdws_image_2;
        }
        if($request->hasFile('block_icon_image_2')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_icon_image_2']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_icon_image_2']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->block_icon_image_2 = $wdws_image_2;
        }

        if($request->hasFile('block_bg_image_3')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_bg_image_3']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_bg_image_3']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->block_bg_image_3 = $wdws_image_2;
        }

        if($request->hasFile('block_icon_image_3')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_icon_image_3']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_icon_image_3']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->block_icon_image_3 = $wdws_image_2;
        }

        if($request->hasFile('why_choose_background_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['why_choose_background_image']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['why_choose_background_image']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->why_choose_background_image = $wdws_image_2;
        }

        if($request->hasFile('why_choose_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['why_choose_image']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['why_choose_image']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->why_choose_image = $wdws_image_2;
        }

        if($request->hasFile('counter_background_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['counter_background_image']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['counter_background_image']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->counter_background_image = $wdws_image_2;
        }

        if($request->hasFile('counter_bg_image_1')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['counter_bg_image_1']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['counter_bg_image_1']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->counter_bg_image_1 = $wdws_image_2;
        }

        if($request->hasFile('counter_icon_image_1')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['counter_icon_image_1']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['counter_icon_image_1']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->counter_icon_image_1 = $wdws_image_2;
        }

        if($request->hasFile('counter_icon_image_2')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['counter_icon_image_2']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['counter_icon_image_2']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->counter_icon_image_2 = $wdws_image_2;
        }

        if($request->hasFile('counter_icon_image_3')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['counter_icon_image_3']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['counter_icon_image_3']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $foundernote->counter_icon_image_3 = $wdws_image_2;
        }

        if($foundernote->save()){
            \Illuminate\Support\Facades\Session::flash('success','Founder note updated');
            return redirect(url('admin/who-we-are'));
        }
    }

    function our_mission(){
        $data['page_heading'] = 'Our Mission';
        $data['who_we_are'] = MissionModel::orderBy('id','DESC')->first();
        return view('admin.about.our-mission',$data);
    }

    function updateour_mission(Request $request){
//        print_r($request->all());die;
        $mission = MissionModel::find($request->id);

        $mission->about_description = $request->about_description;
        $mission->mission_description = $request->mission_description;
        $mission->vision_description = $request->vision_description;
        $mission->mission_summary = $request->mission_summary;
        $mission->vision_summary = $request->vision_summary;

        for ($i = 1; $i <= 3; $i++) {
            $mission->{'block_text_'.$i} = $request->{'block_text_'.$i};
            $mission->{'block_summary_'.$i} = $request->{'block_summary_'.$i};
        }
        for ($i = 1; $i <= 6; $i++) {
            $mission->{'counter_text_'.$i} = $request->{'counter_text_'.$i};
            $mission->{'value_summary_'.$i} = $request->{'value_summary_'.$i};
        }

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

        if($request->hasFile('mission_background_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['mission_background_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['mission_background_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $mission->mission_background_image = $wdws_image_1;
        }
        if($request->hasFile('mission_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['mission_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['mission_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $mission->mission_image = $wdws_image_1;
        }
        if($request->hasFile('vision_background_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['vision_background_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['vision_background_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $mission->vision_background_image = $wdws_image_1;
        }
        if($request->hasFile('vision_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['vision_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['vision_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $mission->vision_image = $wdws_image_1;
        }

//        if($request->hasFile('block_bg_image_1')){
//            $destinationPath2 = $filename2.'serve/'; // upload path
//            $extension = $data['block_bg_image_1']->getClientOriginalExtension(); // getting image extension
//            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
//            $data['block_bg_image_1']->move($destinationPath2, $theam_image2); // uploading file to given path
//            $wdws_image_2 = $destinationPath2.$theam_image2;
//            $mission->block_bg_image_1 = $wdws_image_2;
//        }

        if($request->hasFile('block_icon_image_1')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_icon_image_1']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_icon_image_1']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $mission->block_icon_image_1 = $wdws_image_2;
        }
//        print_r($wdws_image_3);die;

//        if($request->hasFile('block_bg_image_2')){
//            $destinationPath2 = $filename2.'serve/'; // upload path
//            $extension = $data['block_bg_image_2']->getClientOriginalExtension(); // getting image extension
//            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
//            $data['block_bg_image_2']->move($destinationPath2, $theam_image2); // uploading file to given path
//            $wdws_image_2 = $destinationPath2.$theam_image2;
//            $mission->block_bg_image_2 = $wdws_image_2;
//        }
        if($request->hasFile('block_icon_image_2')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_icon_image_2']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_icon_image_2']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $mission->block_icon_image_2 = $wdws_image_2;
        }

//        if($request->hasFile('block_bg_image_3')){
//            $destinationPath2 = $filename2.'serve/'; // upload path
//            $extension = $data['block_bg_image_3']->getClientOriginalExtension(); // getting image extension
//            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
//            $data['block_bg_image_3']->move($destinationPath2, $theam_image2); // uploading file to given path
//            $wdws_image_2 = $destinationPath2.$theam_image2;
//            $mission->block_bg_image_3 = $wdws_image_2;
//        }

        if($request->hasFile('block_icon_image_3')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['block_icon_image_3']->getClientOriginalExtension(); // getting image extension
            $theam_image2 = rand(111,999).rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['block_icon_image_3']->move($destinationPath2, $theam_image2); // uploading file to given path
            $wdws_image_2 = $destinationPath2.$theam_image2;
            $mission->block_icon_image_3 = $wdws_image_2;
        }

        if($mission->save()){
            return redirect($_SERVER['HTTP_REFERER']);
        }

    }

    function core_compentancy(){
        $data['page_heading'] = 'Core Compentancy';
        $data['core_comp'] = CoreCompentancy::first();
        return view('admin.about.core_compentancy',$data);
    }

    function update_core_compentancy(Request $request){
        $core = CoreCompentancy::find($request->id);
        $core->title = $request->title;
        $core->summary = $request->summary;

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

        if($request->hasFile('banner_image')){
            $destinationPath1 = $filename2.'serve/'; // upload path
            $extension = $data['banner_image']->getClientOriginalExtension(); // getting image extension
            $theam_image1 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['banner_image']->move($destinationPath1, $theam_image1); // uploading file to given path
            $wdws_image_1 = $destinationPath1.$theam_image1;
            $core->banner_image = $wdws_image_1;
        }

        if($core->save()){
            return redirect($_SERVER['HTTP_REFERER']);
        }
    }
}
