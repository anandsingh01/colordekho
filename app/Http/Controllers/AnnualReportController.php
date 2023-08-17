<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AnnualReportModel;
use Session;
use Auth;

class AnnualReportController extends Controller
{
    function index(){
        $data['page_heading'] = 'report';
        $data['report'] = AnnualReportModel::get();
        return view('admin.report.index',$data);
    }

    function add (){
        $data['page_heading'] = 'report';
        return view('admin.report.create',$data);
    }

    function save(Request $request){
        $project = new AnnualReportModel;
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

        if($request->hasFile('featured_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['featured_image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['featured_image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_image_3 = $destinationPath2.$theam_image7;
            $project->report_file = $wdws_image_3;
        }

        $project->report_name = $request->report_name;
        $project->status = 1;

        if($project->save()){
            Session::flash('success','Saved');
            return redirect(url('admin/all-annual-reports'));
        }

    }


    function edit($id){
        $page_heading = 'Project';
        $project = AnnualReportModel::find($id);
        return view('admin.report.edit',compact('project','page_heading'));
    }


    function update(Request $request){
        $project = AnnualReportModel::find($request->id);
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

        if($request->hasFile('featured_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['featured_image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['featured_image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_image_3 = $destinationPath2.$theam_image7;
            $project->report_file = $wdws_image_3;
        }

        $project->report_name = $request->report_name;
        $project->status = 1;

        if($project->save()){
            Session::flash('success','Saved');
            return redirect(url('admin/all-annual-reports'));
        }

    }


    public function destroy($id)
    {
        $delete = AnnualReportModel::where('id', $id)->delete();
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
        $category = AnnualReportModel::find($request->id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }

    public function show_on_homet_status(Request $request){
        $category = AnnualReportModel::find($request->id);
        if($request->show_on_home == '1'){
            $category->show_on_home = '1';
        }else{
            $category->show_on_home = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }
}
