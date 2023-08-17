<?php

namespace App\Http\Controllers;

use App\Models\FounderModel;
use Illuminate\Http\Request;
use \App\Models\Team;
use Illuminate\Support\Facades\Session;

class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $team = Team::get();
        $page_heading = 'Team';
        return view('admin.team.index',compact('team','page_heading'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function add()
    {
        $page_heading = 'Team';
        return view('admin.team.create', compact('page_heading'));
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

        $team = new Team ;
        $team->name = $request->name;
        $team->designation = $request->designation;
        $team->about = $request->about;
        $team->agent_id = $request->agent_id;
        $team->email = $request->email;
        $team->phone = $request->phone;
        $team->sequence = $request->sequence;
        $team->fb = $request->fb;
        $team->insta = $request->insta;
        $team->twitter = $request->twitter;
        $team->linkedin = $request->linkedin;

        $team->url_slug = $request->url_slug != '' ? $team->url_slug : strtolower(str_replace(' ','-',$request->name)).'/'.rand(111,999);

        if($request->hasFile('photo')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['photo']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['photo']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_image_3 = $destinationPath2.$theam_image7;
            $team->photo = $wdws_image_3;
        }

        if($team->save()){
            return redirect('/admin/our-team');
        }

    }

    public function status(Request $request){
        $category = Team::find($request->brand_id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>'Member status change successfully.']);
    }

    public function destroy($id)
    {
        $delete = Team::where('id', $id)->delete();

        if ($delete == 1) {
            $success = true;
            $message = "Member deleted successfully";
        } else {
            $success = true;
            $message = "Member not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    function edit($id){
        $page_heading = 'Team';
        $team = Team::find($id);
        return view('admin.team.edit',compact('team','page_heading'));
    }

    function update(Request $request){
        $team = Team::find($request->id);
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

        $team->name = $request->name;
        $team->designation = $request->designation;
        $team->about = $request->about;
        $team->agent_id = $request->agent_id;
        $team->email = $request->email;
        $team->phone = $request->phone;
        $team->sequence = $request->sequence;
        $team->fb = $request->fb;
        $team->insta = $request->insta;
        $team->twitter = $request->twitter;
        $team->linkedin = $request->linkedin;
        $team->url_slug = $request->url_slug != '' ? $team->url_slug : strtolower(str_replace(' ','-',$request->name)).'/'.rand(111,999);

        if($request->hasFile('photo')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['photo']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['photo']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_image_3 = $destinationPath2.$theam_image7;
            $team->photo = $wdws_image_3;
        }

        if($team->save()){
            return redirect('/admin/our-team');
        }

    }

    function team(){
        $team = Team::get();
        return view('web.all-team',compact('team'));
    }

    function all_team_view(){
        $team = Team::where('status','1')->get();
        return view('web.all-team',compact('team'));
    }

    function member_details($url){
        $team_member = Team::where('url_slug',$url)->first();
        return view('web.team-member',compact('team_member'));
    }

    function founders_note(){
        $page_heading = 'Founder Note';
        $founders_note = FounderModel::first();
        return view('admin.team.foundernote',compact('founders_note','page_heading'));
    }

    function updatefoundernote(Request $request){
        $data = $request->all();
        $foundernote = FounderModel::find($request->id);
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

        $foundernote->founder_note = $request->founder_note;
        $foundernote->founder_content_heading = $request->founder_content_heading;

        if($request->hasFile('founder_image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['founder_image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['founder_image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $wdws_image_3 = $destinationPath2.$theam_image7;
            $foundernote->founder_image = $wdws_image_3;
        }

        if($foundernote->save()){
            Session::flash('success','Founder note updated');
            return redirect(url('admin/founders-note'));
        }

    }
}
