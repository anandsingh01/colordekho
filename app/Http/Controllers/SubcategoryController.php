<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class SubcategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['page_heading'] = 'Subategory';
        $data['category'] = Category::where('parent_id','=',0)->get();
        $data['subcategory'] = Category::with('get_parent_category')->where('parent_id','!=',0)->get();
        return view('admin.subcategory.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        if(isset($request->name_slug)){
            $slug = str_replace(' ','-',strtolower($request->name));
        }else{
            $slug = str_replace(' ','-',strtolower($request->name));
        }
        $data = [
            'slug' => $slug
        ];

        $category = Category::where('slug',$data['slug'])->count();
        $savecategory = new Category;
        if($category <= 0){
            $savecategory->slug = $data['slug'];

        }else{
            $savecategory->slug = $data['slug'].'-'.rand(11,99);
        }

        $savecategory->category_name = $request->name;
        $savecategory->meta_tag_description = $request->description;
        $savecategory->meta_tag_keywords = $request->keywords;
        $savecategory->show_on_menu = $request->show_on_menu;
        $savecategory->show_on_homepage = $request->show_at_homepage;
        $savecategory->parent_id = $request->parent_id;
        $savecategory->status = 1;
        if($savecategory->save()){
            return redirect()->back()->with('success','Category Saved');
        }
    }

    public function edit($id)
    {
        $data['page_heading'] = 'Category';
        $data['category'] = Category::get();
        $data['subcategory'] = Category::find($id);
        return view('admin.subcategory.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,)
    {

        if(isset($request->slug)){
            $slug = str_replace(' ',',',strtolower($request->slug));
        }else{
            $slug = str_replace(' ',',',strtolower($request->subcategory_name));
        }
        $data = [
            'slug' => $slug
        ];

//        $category = Subcategory::where('id',$request->id)->where('slug',$data['slug'])->count();
        $savecategory = Category::find($request->id);

//        if($category <= 0){
//            $savecategory->slug = $data['slug'];
//        }else{
//            $savecategory->slug = $data['slug'].'-'.rand(11,99);
//        }

        $savecategory->category_name = $request->name;
//        $savecategory->description = $request->description;
//        $savecategory->keywords = $request->keywords;
//        $savecategory->show_on_menu = $request->show_on_menu;
//        $savecategory->show_at_homepage = $request->show_at_homepage;
        $savecategory->parent_id = $request->parent_id;
        $savecategory->status = 1;
        if($savecategory->save()){
            return redirect(url('admin/subcategories'));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delete = Category::where('id', $id)->delete();
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
        $category = Subcategory::find($request->id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }

    public function uploadSubCategoryContent(Request $request){
        $file = $request->file('csv_file');
//        dd($file);
        if ($file) {
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension(); //Get extension of uploaded file
            $tempPath = $file->getRealPath();
            $fileSize = $file->getSize(); //Get size of uploaded file in bytes
//Check for file extension and size
            $this->checkUploadedFileProperties($extension, $fileSize);
//Where uploaded file will be stored on the server
            $location = 'uploads'; //Created an "uploads" folder for that
// Upload file
            $file->move($location, $filename);
// In case the uploaded file path is to be stored in the database
            $filepath = public_path($location . "/" . $filename);
// Reading file
            $file = fopen($filepath, "r");
            $importData_arr = array(); // Read through the file and store the contents as an array

            $i = 0;
//Read the contents of the uploaded file
            while (($filedata = fgetcsv($file, 1000, ",")) !== FALSE) {
                $num = count($filedata);
// Skip first row (Remove below comment if you want to skip the first row)
                if ($i == 0) {
                    $i++;
                    continue;
                }
                for ($c = 0; $c < $num; $c++) {
                    $importData_arr[$i][] = $filedata[$c];
                }
                $i++;
            }
            fclose($file); //Close after reading
            $j = 0;
            foreach ($importData_arr as $importData) {
                echo "<pre>";
                print_r($importData);

//            $name = $importData[1]; //Get user names
//            $email = $importData[3]; //Get the user emails
//            $j++;
                try {


                    $category = Subcategory::where('slug',$importData[3])->count();
                    $savecategory = new Subcategory;

                    $savecategory->category_id = $importData[4];
                    $savecategory->subcategory_name = $importData[2];
                    $savecategory->meta_tag_description = $importData[5];
                    $savecategory->meta_tag_keywords = $importData[6];
                    $savecategory->show_on_menu = $importData[11];
                    $savecategory->show_on_homepage = $importData[10];
//
                    $savecategory->save();
                } catch (\Exception $e) {
//throw $th;
//                DB::rollBack();
                }
            }

//        die;
            return response()->json([
                'message' => "$j records successfully uploaded"
            ]);
        } else {
//no file was uploaded
            throw new \Exception('No file was uploaded', Response::HTTP_BAD_REQUEST);
        }
    }

    public function checkUploadedFileProperties($extension, $fileSize)
    {
        $valid_extension = array("csv", "xlsx"); //Only want csv and excel files
        $maxFileSize = 2097152; // Uploaded file size limit is 2mb
        if (in_array(strtolower($extension), $valid_extension)) {
            if ($fileSize <= $maxFileSize) {
            } else {
                throw new \Exception('No file was uploaded', Response::HTTP_REQUEST_ENTITY_TOO_LARGE); //413 error
            }
        } else {
            throw new \Exception('Invalid file extension', Response::HTTP_UNSUPPORTED_MEDIA_TYPE); //415 error
        }
    }

}
