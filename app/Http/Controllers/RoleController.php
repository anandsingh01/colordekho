<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Role;
class RoleController extends Controller
{

    public function index()
    {
        $role = Role::get();
        $page_heading = 'Role';
        return view('admin.role.index',compact('role','page_heading'));
    }

    public function add()
    {
        $page_heading = 'Role';
        return view('admin.role.create', compact('page_heading'));
    }

    public function save(Request $request)
    {

        $role = new Role ;
        $role->name = $request->name;

        if($role->save()){
            return redirect('/admin/our-role');
        }

    }

    public function status(Request $request){
        $category = Role::find($request->brand_id);
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
        $delete = Role::where('id', $id)->delete();

        if ($delete == 1) {
            $success = true;
            $message = "Role deleted successfully";
        } else {
            $success = true;
            $message = "Role not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    function edit($id){
        $page_heading = 'Role';
        $role = Role::find($id);
        return view('admin.role.edit',compact('role','page_heading'));
    }

    function update(Request $request){
        $role = Role::find($request->userid);
//        print_r($request->all());die;
        $role->name = $request->name;

        if($role->save()){
            return redirect('/admin/our-role');
        }


    }
}
