<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\CommonModel;
class CommonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function common_settings()
    {
        $data['page_heading'] = 'Common';
        $data['common'] = CommonModel::first();
        return view('admin.common.common',$data);
    }

    public function update_common(Request $request)
    {
        $post = $request->all();
//        print_r($post);die;
        $updateCommon = CommonModel::find($request->id);
        $updateCommon->site_title = $request->site_title;
        $updateCommon->about_footer = $request->about_footer;
        $updateCommon->copyright = $request->copyright;
        $updateCommon->contact_address = $request->contact_address;
        $updateCommon->contact_email = $request->contact_email;
        $updateCommon->contact_phone = $request->contact_phone;
        $updateCommon->facebook_url = $request->facebook_url;
        $updateCommon->twitter_url = $request->twitter_url;
        $updateCommon->instagram_url = $request->instagram_url;
        $updateCommon->linkedin_url = $request->linkedin_url;

        $updateCommon->block_text_1 = $request->block_text_1;
        $updateCommon->block_heading_1 = $request->block_heading_1;
        $updateCommon->block_text_2 = $request->block_text_2;
        $updateCommon->block_heading_2 = $request->block_heading_2;
        $updateCommon->block_text_3 = $request->block_text_3;
        $updateCommon->block_heading_3 = $request->block_heading_3;

        if (!empty($request->logo_header)) {
            $file =$request->file('logo_header');
            $extension = $file->getClientOriginalExtension();
            $filename = rand(111,999).time().'.' . $extension;
            $file->move(public_path('uploads/'), $filename);

            $updateCommon->logo_header =  '/uploads/'.$filename;
//            $data['logo_header'] =
        }
        if (!empty($request->logo_footer)) {
            $file =$request->file('logo_footer');
            $extension = $file->getClientOriginalExtension();
            $filename = rand(111,999).time().'.' . $extension;
            $file->move(public_path('uploads/'), $filename);

            $updateCommon->logo_footer = '/uploads/'.$filename;
        }

        if($updateCommon->save()){
            return redirect($_SERVER['HTTP_REFERER']);
        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
