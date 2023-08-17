<?php

namespace App\Http\Controllers;
use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\BikeVariationsModel;
use App\Models\Cart;
use App\Models\Gallery;
use App\Models\ProductAttribut;
use App\Models\Product_size;
use App\Models\ProductReturn;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use PhpParser\Node\Expr\Print_;
use Session;
use App\Models\Brand;
use App\Models\Section;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['page_heading'] = 'All Products';
        $data['products'] = Product::with('section')->get();
        return view('admin.products.index',$data);
    }

    public function create()
    {
        $data['page_heading'] = 'Add Products';
        $data['sections'] = Category::where(['category_type' => 'product'])->get();
        $data['brands'] = Category::where(['category_type' => 'brands'])->get();
        return view('admin.products.create',$data);
    }

    function getcategoriesBySectionOnProduct(Request $request){
        $id = $request->section_id;
        $sql =  Category::where('section_id',$id)->where('parent_id' , 0)->get();
        return json_decode(json_encode($sql),true);
    }

    // Product Attribute & options
    function addProductSizeOptions($id){
        $data['product_details'] =  Product::where('id',$id)->first();
        $data['page_heading'] = 'Add Attribute To : '.$data['product_details']->title;
//        $data['defaultProductAttrList'] = ProductAttribut::select('product_attributes.*',
//            'attributes.title as attr_title',
//            'attributes_values.attribute_value as attr_val'
//        )
//            ->leftJoin('attributes','attributes.id','product_attributes.attribute_id')
//            ->leftJoin('attributes_values','attributes_values.id','product_attributes.attribute_value')
//            ->where('product_attributes.product_id',$id)->where('product_attributes.is_default','yes')->get();

        $data['addtionalProductAttrList'] = ProductAttribut::select('product_attributes.*',
            'attributes.title as attr_title',
            'attributes_values.attribute_value as attr_val'
        )
            ->leftJoin('attributes','attributes.id','product_attributes.attribute_id')
            ->leftJoin('attributes_values','attributes_values.id','product_attributes.attribute_value')
            ->where('product_attributes.product_id',$id)
//            ->where('product_attributes.is_default','no')
            ->get();

        $data['getAttributes'] = Attribute::where('category_id',$data['product_details']->parent_id)->get();
        return view('admin.products.addAttribute',$data);
    }

    function addProductAttrOptions($id){
        $data['product_details'] =  Product::where('id',$id)->first();
        $data['page_heading'] = 'Add Attribute To : '.$data['product_details']->title;
//        $data['defaultProductAttrList'] = ProductAttribut::select('product_attributes.*',
//            'attributes.title as attr_title',
//            'attributes_values.attribute_value as attr_val'
//        )
//            ->leftJoin('attributes','attributes.id','product_attributes.attribute_id')
//            ->leftJoin('attributes_values','attributes_values.id','product_attributes.attribute_value')
//            ->where('product_attributes.product_id',$id)->where('product_attributes.is_default','yes')->get();

        $data['addtionalProductAttrList'] = ProductAttribut::select('product_attributes.*',
            'attributes.title as attr_title',
            'attributes_values.attribute_value as attr_val'
        )
            ->leftJoin('attributes','attributes.id','product_attributes.attribute_id')
            ->leftJoin('attributes_values','attributes_values.id','product_attributes.attribute_value')
            ->where('product_attributes.product_id',$id)
//            ->where('product_attributes.is_default','no')
            ->get();
        $data['productsize'] = Product_size::where('product_id',$id)->get();
        $data['getAttributes'] = Attribute::where('category_id',$data['product_details']->parent_id)->get();
        return view('admin.products.addAttribute',$data);
    }

    function productSizeAttribute(Request $request, $id){
//        print_r($request->all());die;
        $sql = new Product_size;
        $sql->product_id = $request->id;
        $sql->sku = strtoupper($request->sku);
        $sql->size = $request->size;
        $sql->price = $request->price;
        $sql->msp = $request->msp;
        $sql->qty = $request->qty;
        $sql->flash_sale = $request->flash_sale;
        $sql->flash_price = $request->flash_price;

        $sql->length = $request->length;
        $sql->width = $request->width;
        $sql->height = $request->height;


        $discountPrcnt = '';
        if(!empty($request->msp)){
            $discountPrcnt = (ceil(($request->msp - $request->price)/$request->msp*100));
        }
        // Check if the image file was uploaded
        if ($request->hasFile('image')) {
            $image = $request->file('image');

            // Define the path where you want to store the uploaded image
            $path = 'images';

            // Generate a unique name for the image to avoid overwriting
            $imageName = time() . '_' . $image->getClientOriginalName();

            // Move the uploaded image to the specified path
            $image->move($path, $imageName);

            // Convert the image to WebP format and save it with a new name
            $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
            Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

            // Save the image name or path to your database as needed
            // For example, you can store the image name in a 'image' column of the offers table
            $sql->image = $webpImagePath;

            // Optionally, you can also save the original image path if needed
            // $offer->image = 'images/' . $imageName;
        }
        $sql->discount_pecent = $discountPrcnt;
        if($sql->save()){
            return redirect('admin/products/add/attribute/display/' . $id);
        }
    }
    function saveProductAdditionalAttributes(Request $request, $id){
        $sql = new ProductAttribut;
        $sql->product_id = $request->id;
        $sql->attribute_id = $request->attribute_id;
        $sql->attribute_value = $request->attribute_value;
        $sql->is_default = 'no';
        if($sql->save()){
            return redirect('admin/products/add/attribute/display/' . $id);
        }
    }

    function editProductSizeAttrValue($id){
        $data['attr_id'] = $id;
        $data['attr_details'] = Product_size::find($id);
        $data['product_details'] =  Product::where('id',$data['attr_details']->product_id)->first();
        $data['page_heading'] = 'Add Attribute To : '.$data['product_details']->title;
        return view('admin.products.editDefaultProductAttr',$data);
    }

    function editAdditionalProductAttrValue($id){
        $data['attr_id'] = $id;
        $data['attr_details'] = ProductAttribut::find($id);
        $data['product_details'] =  Product::where('id',$data['attr_details']->product_id)->first();
        $data['getAllAttributes'] = Attribute::where('category_id',$data['product_details']->parent_id)->get();
        $data['getAllAttributesValues'] = AttributeValue::where('attribute_option',$data['attr_details']->attribute_id)->get();
        $data['page_heading'] = 'Add Attribute To : '.$data['product_details']->title;
        return view('admin.products.editAdditionalProductAttr',$data);
    }

    function updateproductSizeAttribute(Request $request, $id){
        $sql = Product_size::find($id);
        $sql->sku = strtoupper($request->sku);
        $sql->sku = $request->sku;
        $sql->qty = $request->qty;
        $sql->size = $request->size;
        $sql->price = $request->price;
        $sql->msp = $request->msp;
        $sql->length = $request->length;
        $sql->width = $request->width;
        $sql->height = $request->height;

        $sql->flash_sale = $request->flash_sale;
        $sql->flash_price = $request->flash_price;

        // Check if the image file was uploaded
        if ($request->hasFile('image')) {
            $image = $request->file('image');

            // Define the path where you want to store the uploaded image
            $path = 'images';

            // Generate a unique name for the image to avoid overwriting
            $imageName = time() . '_' . $image->getClientOriginalName();

            // Move the uploaded image to the specified path
            $image->move($path, $imageName);

            // Convert the image to WebP format and save it with a new name
            $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
            Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

            // Save the image name or path to your database as needed
            // For example, you can store the image name in a 'image' column of the offers table
            $sql->image = $webpImagePath;

            // Optionally, you can also save the original image path if needed
            // $offer->image = 'images/' . $imageName;
        }
        $discountPrcnt = '';
        if(!empty($request->msp)){
            $discountPrcnt = (ceil(($request->msp - $request->price)/$request->msp*100));
        }
        $sql->discount_pecent = $discountPrcnt;

        $getCart = Cart::where(['product_id'=>$request->product_id,'size' => $sql->id,'status'=>'yes'])->get();
        if(!empty($getCart)){
            foreach($getCart as $getCarts){
                $updateSubTotal = $getCarts->cartqty * $request->price;
                $updateCart = Cart::where(['product_id'=>$request->product_id,'size' => $sql->id,'status'=>'yes'])
                    ->update([
                        'price' => $request->price,
                        'subtotal' => $updateSubTotal
                    ]);
            }

        }
        if($sql->save()){
            return redirect('admin/products/add/attribute/display/' . $request->product_id);
        }
    }

    function delete_product_size($id){
        $delete = Product_size::find($id);
        $delete = Product_size::where('id', $id)->delete();
        if ($delete == 1) {
            $success = true;
            $message = "Size deleted successfully";
        } else {
            $success = true;
            $message = "Size not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    function deleteProductAddtionalAttr($id){
        $delete = ProductAttribut::where('id', $id)->delete();
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

    function getAttrValueFromOptions(Request $request){
        $id = $request->attribute_id;
        $sql =  AttributeValue::where('attribute_option',$id)->get();
        $options = [];
        if(!empty($sql)){
            foreach($sql as $key => $attVal){
                $options[] .= '<option value="'.$attVal->id.'">'.$attVal->attribute_value.'</option>';
            }
        }
        return $options;
    }


    function getSubcategoriesByCategoriesOnProduct(Request $request){
        $id = $request->parent_id;
        $sql =  Category::where('parent_id',$id)->get();
        return json_decode(json_encode($sql),true);
    }

    public function storee(Request $request)
    {
        $sql = new Product;
        $sql->title = $request->title;
        $sql->product_desc = $request->product_desc;
        $sql->product_actual_price = $request->product_actual_price;
        $sql->product_selling_price = $request->product_selling_price;
        $sql->product_max_selling_price = $request->product_max_selling_price;

        $publicPath = public_path();
        $imagesPath = $publicPath . '/images';
        $webpPath = $publicPath . '/images/webp';

        if (!File::exists($imagesPath)) {
            File::makeDirectory($imagesPath, 0755, true);
        }

        if (!File::exists($webpPath)) {
            File::makeDirectory($webpPath, 0755, true);
        }


        // Check if the image file was uploaded
        if ($request->hasFile('photo1')) {
            $image = $request->file('photo1');

            // Define the path where you want to store the uploaded image
            $path = 'images';

            // Generate a unique name for the image to avoid overwriting
            $imageName = time() . '_' . $image->getClientOriginalName();

            // Move the uploaded image to the specified path
            $image->move($path, $imageName);

            // Convert the image to WebP format and save it with a new name
            $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
            Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

            $sql->photo = $webpImagePath;
        }

        // Check if the image file was uploaded
        if ($request->hasFile('photo2')) {
            $image = $request->file('photo2');

            // Define the path where you want to store the uploaded image
            $path = 'images';

            // Generate a unique name for the image to avoid overwriting
            $imageName = time() . '_' . $image->getClientOriginalName();

            // Move the uploaded image to the specified path
            $image->move($path, $imageName);

            // Convert the image to WebP format and save it with a new name
            $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
            Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

            $sql->photo_two = $webpImagePath;
        }




        if(isset($request->meta_title)){
            $sql->meta_title = $request->meta_title;
        }else{
            $sql->meta_title = NULL;
        }

        if(isset($request->meta_desc)){
            $sql->meta_desc = $request->meta_desc;
        }else{
            $sql->meta_desc = NULL;
        }
        if(isset($request->meta_keywords)){
            $sql->meta_keywords = $request->meta_keywords;
        }else{
            $sql->meta_keywords = NULL;
        }

        if(isset($request->slug)){
            $slug = Str::slug(str_replace(' ', '-',$request->slug));
            $slug_count = Product::where('slug',$slug)->count();
            if($slug_count > 0){
                $slug .= time().'-'.$request->slug;
            }
            $sql->slug = $slug;
        }else{
            $slug = Str::slug(str_replace(' ', '-',$request->title));
            $slug_count = Product::where('slug',$slug)->count();
            if($slug_count > 0){
                $slug .= time().'-'.$request->slug;
            }
            $sql->slug = $slug;
        }
        if($sql->save()){
            return redirect('admin/all-products/');
        }
    }


    public function edit($id){
        $data['page_heading'] = 'Edit Products';

        $data['product_details'] = Product::find($id);
        $data['sections'] = Category::where(['category_type' => 'product'])->get();
        $data['brands'] = Category::where(['category_type' => 'brands'])->get();
        return view('admin.products.edit',$data);
    }

    function update(Request $request,$id){
//        print_r($request->all());die;
        $sql =  Product::find($id);
        $sql->title = $request->title;
        $sql->product_desc = $request->product_desc;
        $sql->product_actual_price = $request->product_actual_price;
        $sql->product_selling_price = $request->product_selling_price;
        $sql->product_max_selling_price = $request->product_max_selling_price;

        // Check if the image file was uploaded
        if ($request->hasFile('photo1')) {
            $image = $request->file('photo1');

            // Define the path where you want to store the uploaded image
            $path = 'images';

            // Generate a unique name for the image to avoid overwriting
            $imageName = time() . '_' . $image->getClientOriginalName();

            // Move the uploaded image to the specified path
            $image->move($path, $imageName);

            // Convert the image to WebP format and save it with a new name
            $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
            Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

            $sql->photo = $webpImagePath;
        }

        // Check if the image file was uploaded
        if ($request->hasFile('photo2')) {
            $image = $request->file('photo2');

            // Define the path where you want to store the uploaded image
            $path = 'images';

            // Generate a unique name for the image to avoid overwriting
            $imageName = time() . '_' . $image->getClientOriginalName();

            // Move the uploaded image to the specified path
            $image->move($path, $imageName);

            // Convert the image to WebP format and save it with a new name
            $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
            Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

            $sql->photo_two = $webpImagePath;
        }

        if(isset($request->meta_title)){
            $sql->meta_title = $request->meta_title;
        }else{
            $sql->meta_title = NULL;
        }

        if(isset($request->meta_desc)){
            $sql->meta_desc = $request->meta_desc;
        }else{
            $sql->meta_desc = NULL;
        }
        if(isset($request->meta_keywords)){
            $sql->meta_keywords = $request->meta_keywords;
        }else{
            $sql->meta_keywords = NULL;
        }


        if(isset($request->slug)){
            $sql->slug = $request->slug;
        }else{
            $slug = Str::slug(str_replace(' ', '-',$request->title));
            $slug_count = Product::where('slug',$slug)->count();
            if($slug_count > 0){
                $slug .= time().'-'.$request->slug;
            }
            $sql->slug = $slug;
        }

        if($sql->save()){
            return redirect('admin/all-products/');
        }
    }

    function destroy($id){
        $sql = Product::find($id);
        $sql->delete();
        if ($sql == 1) {
            $success = true;
            $message = "Product deleted successfully";
        } else {
            $success = true;
            $message = "Product not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    public function status(Request $request){
//        print_r($request->all());die;
        $category = Product::find($request->id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }



}
