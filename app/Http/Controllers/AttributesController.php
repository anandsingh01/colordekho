<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Attribute;
use App\Models\Section;
use App\Models\AttributeValue;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Session;
class AttributesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index() // all Attributes Options
    {
        $data['page_heading'] = 'All Products Attributes';
        $data['attributes'] = Attribute::with(['getSectionDetails','getCategoryDetails','getAttrVal'])->get();
        return view('admin.products.attributes.index',$data);
    }

    public function create() // Add Attributes add page
    {
        $data['page_heading'] = 'Add Products Attributes';
        $data['sections'] = Section::get();
        $data['parent_cats'] = Category::where(['category_type'=>'product'])
            ->get();
//        print_r($data);die;
        return view('admin.products.attributes.create',$data);

    }

    public function store(Request $request) // Save Attributes Options
    {
        $sql = new Attribute;
        $sql->title = $request->title;
        $sql->section_id = $request->section_id;
        $sql->category_id = $request->category_id;
        $sql->status = $request->status;

        if($sql->save()){
            Session::flash('success','Attribues Option added');
            return redirect('admin/products/all-attributes');
        }else{
            Session::flash('error','Attributes Option not added');
            return redirect('admin/products/all-attributes');
        }
    }

    public function edit($id) // Edit Attributes Options
    {
        $data['page_heading'] = 'Update Attribute Option';
        $data['attribute'] = Attribute::find($id);
        $data['sections'] = Section::get();
        $data['parent_cats'] = Category::where('parent_id' ,'=','0')
            ->where(['status' => 1,'category_type'=>'product'])
            ->get();
        return view('admin.products.attributes.edit',$data);

    }

    public function update(Request $request, $id) // Update Attributes Options
    {
        $sql = Attribute::find($id);
        $sql->title = $request->title;
        $sql->section_id = $request->section_id;
        $sql->category_id = $request->category_id;
        $sql->status = $request->status;

        if($sql->save()){
            Session::flash('success','Attribues Option added');
            return redirect('admin/products/all-attributes');
        }else{
            Session::flash('error','Attributes Option not added');
            return redirect('admin/products/all-attributes');
        }
    }


    public function changeAttributesstatus(Request $request){ // change Attributes Options status
        $productAttr = Attribute::find($request->attribute_id);
        if($request->status == '1'){
            $productAttr->status = 'active';
        }else{
            $productAttr->status = 'inactive';
        }
        $productAttr->save();
        return response()->json(['success'=>'Category status change successfully.']);
    }


    public function viewOptionsValues($id)
    {
        $data['page_heading'] = 'Update Attribute Option';
        $data['attribute_option_id'] = $id;
        $data['attribute_values'] = AttributeValue::where('attribute_option',$id)->get();
//        print_r($data);die;
        return view('admin.products.attributes.options.edit',$data);
    }

    public function addOptionsValues($id)
    {
        $data['page_heading'] = 'Update Attribute Option';
        $data['attribute_values'] = AttributeValue::where('attribute_option',$id)->get();
        return view('admin.products.attributes.options.edit',$data);
    }
    public function saveAttributesValues(Request $request,$id)
    {
        $sql = new AttributeValue;
        $sql->attribute_option = $id;
        $sql->attribute_value = $request->attribute_value;
        if($sql->save()){
            Session::flash('success','Attribues Value added');
            return redirect('admin/products/attributes/options/'.$id);
        }else{
            Session::flash('error','Attributes value not added');
            return redirect('admin/products/add-attributes-values/'.$id);
        }
    }

    public function editAttributesValues($id)
    {
//        print_r($id);die;
        $data['page_heading'] = 'Update Attribute Value';
        $data['id'] = $id;
        $data['attribute_values'] = AttributeValue::where('id',$id)->first();
//        print_r($data);die;
        return view('admin.products.attributes.options.modify',$data);
    }

    public function updateAttributesValues(Request $request,$id)
    {
        $sql = AttributeValue::find($id);
        $sql->attribute_value = $request->attribute_value;
        if($sql->save()){
            Session::flash('success','Attribues Value added');
            return redirect('admin/products/attributes/options/'.$request->attr_option);
        }else{
            Session::flash('error','Attributes value not added');
            return redirect('admin/products/add-attributes-values/'.$request->attr_option);
        }
    }

    public function destroy($id)
    {
        $delete = Attribute::where('id', $id)->delete();
        $delete = AttributeValue::where('attribute_option', $id)->delete();
        if ($delete == 1) {
            $success = true;
            $message = "Attribute deleted successfully";
        } else {
            $success = true;
            $message = "Attribute not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    public function destroyAttrValue($id)
    {
        $delete = AttributeValue::where('id', $id)->delete();
        if ($delete == 1) {
            $success = true;
            $message = "Attribute value deleted successfully";
        } else {
            $success = true;
            $message = "Attribute value not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }



}
