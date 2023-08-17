<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Session;
use \App\Models\Goals;
use App\Models\ProjectModel;
use Illuminate\Http\Request;

class GoalController extends Controller
{

    function index(){
        if(Auth::check()){
            $data['page_heading'] = 'Goals';
            $data['goals'] = Goals::get();
            return view('admin.goals.index',$data);
        }else{
            return redirect(url('/login'));
        }
    }

    function add (){
        $data['page_heading'] = 'Goals';
        return view('admin.goals.create',$data);
    }

    function save(Request $request){
        $project = new Goals();
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

        if($request->hasFile('background_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['background_image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['background_image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_image_3 = $destinationPath2.$theam_image7;
            $project->background_image = $wdws_image_3;
        }

        if($request->hasFile('icon_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['icon_image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['icon_image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_icon_image = $destinationPath2.$theam_image7;
            $project->icon_image = $wdws_icon_image;
        }

        $project->goal_name = $request->goal_name;
        $project->goal_desc = $request->goal_desc;
        $project->sequence = $request->sequence;
        $project->show_on_home = 0;
        $project->color = $request->color;
        $project->status = 1;

        if($project->save()){
            Session::flash('success','Saved');
            return redirect(url('admin/all-goals'));
        }

    }


    function edit($id){
        $page_heading = 'Project';
        $goals = Goals::find($id);
        return view('admin.goals.edit',compact('goals','page_heading'));
    }


    function update(Request $request){
        $project = Goals::find($request->id);
//        print_r($project);die;
        $data = $request->all();
//        print_r($data);die;
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

        if($request->hasFile('background_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['background_image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['background_image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_image_3 = $destinationPath2.$theam_image7;
            $project->background_image = $wdws_image_3;
        }

        if($request->hasFile('icon_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['icon_image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['icon_image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_icon_image = $destinationPath2.$theam_image7;
            $project->icon_image = $wdws_icon_image;
        }

        $project->goal_name = $request->goal_name;
        $project->goal_desc = $request->goal_desc;
        $project->show_on_home = 0;
        $project->color = $request->color;
        $project->status = 1;

        if($project->save()){
            Session::flash('success','Saved');
            return redirect(url('admin/all-goals'));
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
        $category = Goals::find($request->id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }

    public function show_on_homet_status(Request $request){
        $category = Goals::find($request->id);
        if($request->show_on_home == '1'){
            $category->show_on_home = '1';
        }else{
            $category->show_on_home = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }
}
