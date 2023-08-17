<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Offer;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Illuminate\Http\Request;

class OfferController extends Controller
{
    public function index()
    {
        $data['page_heading'] = 'Offers';
        $data['offers'] = Offer::all();
        return view('admin.offers.index', $data);
    }
    public function store(Request $request)
    {
        // Validate the request data here if needed
        // $request->validate([...]);

        $offer = new Offer();
        $offer->title = $request->title;
        $offer->code = $request->code;
        $offer->description = $request->description;
        $offer->percentage_discount = $request->percentage_discount;
        $offer->discount_type = $request->discount_type;
        $offer->start_date = $request->start_date;
        $offer->end_date = $request->end_date;
        $offer->status = $request->show_at_homepage;

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
            $offer->image = $webpImagePath;

            // Optionally, you can also save the original image path if needed
            // $offer->image = 'images/' . $imageName;
        }

        // Save the offer to the database
        $offer->save();

        // Redirect to the desired route after successful saving
//        Session::flash('success','Offer Added');
        return redirect(url('admin/offers'));
    }

    public function edit($id)
    {
        $data['page_heading'] = 'Category';
        $data['offer'] = Offer::find($id);
        return view('admin.offers.edit',$data);
    }
    public function update(Request $request)
    {
        $offer = Offer::find($request->id);
        $offer->title = $request->title;
        $offer->code = $request->code;
        $offer->description = $request->description;
        $offer->percentage_discount = $request->percentage_discount;
        $offer->discount_type = $request->discount_type;
        $offer->start_date = $request->start_date;
        $offer->end_date = $request->end_date;
        $offer->status = $request->show_at_homepage;

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
            $offer->image = $webpImagePath;

            // Optionally, you can also save the original image path if needed
            // $offer->image = 'images/' . $imageName;
        }

        // Save the offer to the database
        $offer->save();

        // Redirect to the desired route after successful saving
//        Session::flash('success','Offer Added');
        return redirect(url('admin/offers'));
    }

    public function destroy($id)
    {
        $delete = Offer::where('id', $id)->delete();
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
        $category = Offer::find($request->id);
        if($request->status == '1'){
            $category->status = '1';
        }else{
            $category->status = '0';
        }
        $category->save();
        return response()->json(['success'=>' status change successfully.']);
    }
}

