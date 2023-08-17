<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $data['page_heading'] = 'Posts';
        return view('admin.blogs.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['page_heading'] = 'Posts';
        $data['category'] = Category::get();
        return view('admin.blogs.create',$data);
    }

    function getsubcategory(Request $request){
//        print_r($request->all());die;
        $cat_id = $request->cat_id;
        $subcategories = Category::where('parent_id', '=', $cat_id)->get();
//        print_r($subcategories);die;
        return response()->json($subcategories);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
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

        $blog = new Blog;
        $blog->title = $request->title;
        $blog->title_slug = Str::slug($request->title);
        $blog->summary = $request->summary;
        $blog->keywords = $request->keywords;
        $blog->visibility = $request->visibility;
        $blog->show_right_column = $request->show_right_column;
        $blog->is_featured = $request->is_featured;
        $blog->is_breaking = $request->is_breaking;
        $blog->is_slider = $request->is_slider;
        $blog->is_recommended = $request->is_recommended;
        $blog->need_auth = $request->need_auth;
        $blog->optional_url = $request->optional_url;
        $blog->content = $request->blogcontent;

        if($request->hasFile('image')){
            $destinationPath2 = $filename2.'serve/'; // upload path
            $extension = $data['image']->getClientOriginalExtension(); // getting image extension
            $theam_image7 = rand(11111, 99999) . time() . '.' . $extension; // renameing image
            $data['image']->move($destinationPath2, $theam_image7); // uploading file to given path
            $imagePath = $destinationPath2.$theam_image7;
            $blog->image_big = $imagePath;
            $blog->image_slider = $imagePath;
            $blog->image_mid = $imagePath;
            $blog->image_small = $imagePath;
        }


        if($request->video_url){
            $blog->video_url = $request->video_url;
        }

        if($request->video_embed_code){
            $blog->video_embed_code = $request->video_embed_code;
        }

        $blog->image_description = $request->image_description;
//        $blog->post_selected_file_id = implode(",",$request->post_selected_file_id);
//        $blog->category_id = $request->category_id;
        $blog->is_scheduled = $request->scheduled_post;
        $blog->post_type = $request->post_format;
        $blog->user_id = Auth::user()->id;
        if($blog->save()){

            return redirect(url('admin/all-post?type=all-posts'));
        }
    }


    function all_posts(Request $request){

        $data['page_heading'] = 'Posts';
        $data['category'] = Category::get();
        if($request->type =='all-posts'){
            $data['blogs'] = Blog::select('posts.*','users.name as user_name')
            ->leftJoin('users','posts.user_id','=','users.id')
            ->with(['getCategory'])
            ->orderBy('id','DESC')
            ->paginate(10);
        }elseif($request->type =='slider-posts'){
            $data['blogs'] = Blog::select('posts.*','users.username as user_name')
            ->leftJoin('users','posts.user_id','=','users.id')
            ->with(['getCategory'])
            ->orderBy('id','DESC')
            ->where('is_slider',1)
            ->paginate(10);
        }elseif($request->type='breaking-posts'){
            $data['blogs'] = Blog::select('posts.*','users.username as user_name')
            ->leftJoin('users','posts.user_id','=','users.id')
            ->with(['getCategory'])
            ->orderBy('id','DESC')
            ->where('is_breaking',1)
            ->paginate(10);
        }elseif($request->type=='recommended-posts'){
            $data['blogs'] = Blog::select('posts.*','users.username as user_name')
            ->leftJoin('users','posts.user_id','=','users.id')
            ->with(['getCategory'])
            ->orderBy('id','DESC')
            ->where('recommended-posts',1)
            ->paginate(10);
        }elseif($request->type=='pending-posts'){
            $data['blogs'] = Blog::select('posts.*','users.username as user_name')
            ->leftJoin('users','posts.user_id','=','users.id')
            ->with(['getCategory'])
            ->orderBy('id','DESC')
            ->where('pending-posts',1)
            ->paginate(10);
        }elseif($request->type=='scheduled-posts'){
            $data['blogs'] = Blog::select('posts.*','users.username as user_name')
            ->leftJoin('users','posts.user_id','=','users.id')
            ->with(['getCategory'])
            ->orderBy('id','DESC')
            ->where('scheduled-posts',1)
            ->paginate(10);
        }

        // print_r($data);die;
        return view('admin.blogs.all-blogs',$data);
    }

    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['page_heading'] = 'Posts';
        $data['category'] = Category::where('parent_id','0')->get();
        $data['posts'] = Blog::with('getTags')->find($id);
        $data['subcategory'] = Category::where('parent_id',$data['posts']->category_id)->get();

//        print_r($data['posts']);die;
        return view('admin.blogs.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $blog = Blog::find($request->id);
        $blog->title = $request->title;
        $blog->title_slug = $request->title_slug;
        $blog->summary = $request->summary;
        $blog->keywords = $request->keywords;
        $blog->visibility = $request->visibility;
        $blog->show_right_column = $request->show_right_column;
        $blog->is_featured = $request->is_featured;
        $blog->is_breaking = $request->is_breaking;
        $blog->is_slider = $request->is_slider;
        $blog->is_recommended = $request->is_recommended;
        $blog->need_auth = $request->need_auth;
        $blog->optional_url = $request->optional_url;
        $blog->content = $request->blogcontent;

        $blog->image_url = $request->image_url;
        $blog->image_description = $request->image_description;
        $blog->post_selected_file_id = implode(",",$request->post_selected_file_id);
        $blog->category_id = $request->category_id;
        $blog->is_scheduled = $request->scheduled_post;
        $blog->post_type = $request->post_type;
        $blog->user_id = Auth::user()->id;
        if($request->post_image_id){
            $url = $request->post_image_id;
            $imagePath =  parse_url($url, PHP_URL_PATH);
            //        $blog->post_image_id = $imagePath;
            $blog->image_big = $imagePath;
            $blog->image_slider = $imagePath;
            $blog->image_mid = $imagePath;
            $blog->image_small = $imagePath;
        }
//        print_r($blog->added_by);die;
        if($blog->save()){
//            print_r($blog->id);
//            die;
            if($request->tags){
                $tagsExplode = explode(',',$request->tags);
                foreach ($tagsExplode as $item) {
                    $insertTag = new Tag();
                    $tag_slug = str_replace(' ','-',$item);
                    $insertTag->post_id = $blog->id;
                    $insertTag->tag = $item;
                    $insertTag->tag_slug = $tag_slug;
                    $insertTag->save();
                }

            }
            return redirect(url('admin/post-format'));
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
        $delete = Blog::where('id', $id)->delete();
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
}
