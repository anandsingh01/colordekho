<?php

namespace App\Http\Controllers;

use App\Models\DeliverAddress;
use App\Models\Offer;
use App\Models\Product;
use Auth;
use App\Models\WishlistModel;
use App\Models\Cart;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Intervention\Image\Facades\Image;

class CartController extends Controller
{
    public function addToCart(Request $request)
    {
//        print_r($request->all());die;
        $carId = $request->car_id;
        $variation = $request->variation;
        $colorId = $request->color_id;
        $price = $request->price;
        $mrp = $request->mrp;

        $userIp = $this->getUserIP();
        $userId = auth()->check() ? auth()->id() : null;

        $cartData = Cart::where('car_id', $carId)
            ->where('user_id', $userId)
            ->where('color_id', $colorId)
            ->where('variation', $variation)
            ->first();

        if ($cartData === null) {
            $cartData = new Cart();

            // Check if the image file was uploaded
            if ($request->hasFile('car_image')) {
                $image = $request->file('car_image');

//                print_r($image);die;

                // Define the path where you want to store the uploaded image
                $path = 'images';

                // Generate a unique name for the image to avoid overwriting
                $imageName = time() . '_' . $image->getClientOriginalName();

                // Move the uploaded image to the specified path
                $image->move($path, $imageName);

                // Convert the image to WebP format and save it with a new name
                $webpImagePath = 'images/webp/' .rand(1111,9999).time(). '.webp';
                Image::make($path . '/' . $imageName)->encode('webp')->save($webpImagePath, 80);

                $cartData->image = $webpImagePath;
            }

            $cartData->type = 'car';
            $cartData->car_id = $carId;
            $cartData->user_id = $userId;
            $cartData->ip_address = $userIp;
            $cartData->color_id = $colorId;
            $cartData->variation = $variation;
            $cartData->price = $price;
            $cartData->mrp = $mrp;
            $cartData->cartqty = 1;
            $cartData->subtotal = $price;


            $cartData->save();
        } else {
            $cartData->cartqty += 1;
            $cartData->subtotal += $price;
            $cartData->mrp += $mrp;

            $cartData->save();
        }

        // Calculate cart totals
        $cartCount = Cart::where('user_id', $userId)->count();
        $productSubtotal = Cart::where('user_id', $userId)
            ->where('car_id', $carId)
            ->select('subtotal')
            ->first();
        $qty = Cart::where('user_id', $userId)
            ->where('car_id', $carId)
            ->select('cartqty')
            ->first();
        $cartSubtotal = Cart::where('user_id', $userId)->sum('subtotal');

        return response()->json([
            'code' => 200,
            'cartCount' => $cartCount,
            'subtotal' => $productSubtotal,
            'qty' => $qty,
            'cartSubtotal' => $cartSubtotal,
            'status' => 'Added to cart'
        ]);
    }

    public function addToCartBike(Request $request)
    {
//        print_r($request->all());die;
        $bikeId = $request->bikeId;
        $variation = $request->variation;
        $colorId = $request->color_id;
        $price = $request->price;
        $mrp = $request->mrp;

        $userIp = $this->getUserIP();
        $userId = auth()->check() ? auth()->id() : null;

        $cartData = Cart::where('bike_id', $bikeId)
            ->where('user_id', $userId)
            ->where('color_id', $colorId)
            ->where('variation', $variation)
            ->first();

        if ($cartData === null) {
            $cartData = new Cart();


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

                $cartData->image = $webpImagePath;
            }

            $cartData->type = 'bike';
            $cartData->bike_id = $bikeId;
            $cartData->user_id = $userId;
            $cartData->ip_address = $userIp;
            $cartData->color_id = $colorId;
            $cartData->variation = $variation;
            $cartData->price = $price;
            $cartData->mrp = $mrp;
            $cartData->cartqty = 1;
            $cartData->subtotal = $price;


            $cartData->save();
        } else {
            $cartData->cartqty += 1;
            $cartData->subtotal += $price;
            $cartData->mrp += $mrp;

            $cartData->save();
        }

        // Calculate cart totals
        $cartCount = Cart::where('user_id', $userId)->count();
        $productSubtotal = Cart::where('user_id', $userId)
            ->where('bike_id', $bikeId)
            ->select('subtotal')
            ->first();
        $qty = Cart::where('user_id', $userId)
            ->where('bike_id', $bikeId)
            ->select('cartqty')
            ->first();
        $cartSubtotal = Cart::where('user_id', $userId)->sum('subtotal');

        return response()->json([
            'code' => 200,
            'cartCount' => $cartCount,
            'subtotal' => $productSubtotal,
            'qty' => $qty,
            'cartSubtotal' => $cartSubtotal,
            'status' => 'Added to cart'
        ]);
    }

    public function addToCartProduct(Request $request)
    {

        $get_product = Product::find($request->productId);
//        print_r($request->all());die;
        $productId = $request->productId;
        $price = $get_product->product_selling_price;
        $mrp = $get_product->product_actual_price;

        $userIp = $this->getUserIP();
        $userId = auth()->check() ? auth()->id() : null;

        $cartData = Cart::where('product_id', $productId)
            ->where('user_id', $userId)
            ->first();

        if ($cartData === null) {
            $cartData = new Cart();

            $cartData->image = $get_product->photo;
            $cartData->type = 'product';
            $cartData->product_id = $productId;
            $cartData->user_id = $userId;
            $cartData->ip_address = $userIp;
            $cartData->price = $price;
            $cartData->mrp = $mrp;
            $cartData->cartqty = 1;
            $cartData->subtotal = $price;


            $cartData->save();
        } else {
            $cartData->cartqty += 1;
            $cartData->subtotal += $price;
            $cartData->mrp += $mrp;

            $cartData->save();
        }

        // Calculate cart totals
        $cartCount = Cart::where('user_id', $userId)->count();
        $productSubtotal = Cart::where('user_id', $userId)
            ->where('product_id', $productId)
            ->select('subtotal')
            ->first();
        $qty = Cart::where('user_id', $userId)
            ->where('product_id', $productId)
            ->select('cartqty')
            ->first();
        $cartSubtotal = Cart::where('user_id', $userId)->sum('subtotal');

        return response()->json([
            'code' => 200,
            'cartCount' => $cartCount,
            'subtotal' => $productSubtotal,
            'qty' => $qty,
            'cartSubtotal' => $cartSubtotal,
            'status' => 'Added to cart'
        ]);
    }

    function getUserIP()
    {
        // Get real visitor IP behind CloudFlare network
        if (isset($_SERVER["HTTP_CF_CONNECTING_IP"])) {
            $_SERVER['REMOTE_ADDR'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
            $_SERVER['HTTP_CLIENT_IP'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
        }
        $client  = @$_SERVER['HTTP_CLIENT_IP'];
        $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
        $remote  = $_SERVER['REMOTE_ADDR'];

        if(filter_var($client, FILTER_VALIDATE_IP))
        {
            $ip = $client;
        }
        elseif(filter_var($forward, FILTER_VALIDATE_IP))
        {
            $ip = $forward;
        }
        else
        {
            $ip = $remote;
        }

        return $ip;
    }

    function getAllCartsProducts(){
        $data['page_heading'] = 'Cart Page';
        $cartItems = \App\Models\Cart::where('ip_address',$_SERVER['REMOTE_ADDR'])
            ->with([
                'car_color','car_manufacturer','car_variation',
                'bike_color','bike_variation','bike_manufacturer',
                'products'
            ])
            ->get();

        $cartDetails = [];

        foreach ($cartItems as $item) {
            if (!empty($item->bike_id)) {
                // Fetch details from the bike relationship
                $details = [
                    'type' => 'bike',
                    'color' => $item->bike_color->color,
                    'manufacturer' => $item->bike_manufacturer->name, // Assuming manufacturer relationship remains the same
                    'variation' => $item->bike_variation->variation,
                    'mrp' => $item->mrp,
                    'id' => $item->id,
                    'price' => $item->price,
                    'subtotal' => $item->subtotal,
                    'cartqty' => $item->cartqty,
                    'image' => $item->image, // Change this to the correct image column name
                    // ... other fields
                ];
            } elseif (!empty($item->car_id)) {
                // Fetch details from the car relationship
                $details = [
                    'type' => 'car',
                    'color' => $item->car_color->color,
                    'manufacturer' => $item->car_manufacturer->name, // Assuming manufacturer relationship remains the same
                    'variation' => $item->car_variation->variation, // quantity 100ml.500ml
                    'mrp' => $item->mrp,
                    'id' => $item->id,
                    'price' => $item->price,
                    'subtotal' => $item->subtotal,
                    'cartqty' => $item->cartqty,
                    'image' => $item->image, // Change this to the correct image column name
                    // ... other fields
                ];
            }elseif (!empty($item->product_id)) {
                // Fetch details from the car relationship
                $get_product = Product::find($item->product_id);
                $details = [
                    'manufacturer' => $get_product->title,
                    'type' => 'product',
                    'mrp' => $item->mrp,
                    'id' => $item->id,
                    'price' => $item->price,
                    'subtotal' => $item->subtotal,
                    'cartqty' => $item->cartqty,
                    'image' => $get_product->photo, // Change this to the correct image column name
                    // ... other fields
                ];
            } else {
                // Handle the case where neither bike_id nor car_id is present
            }

            $cartDetails[] = $details;
        }

        $data['getAllCart'] = $cartDetails;
//        print_r($data);die;
        return view('web.cart',$data);
    }

    function updateSizeCart(Request $request){
        $user_ip = $this->getUserIP();
        $sql = Cart::where('size', $request->size)
            ->where('product_id',$request->product_id)
            ->where('id','!=',$request->cart_id)
            ->count();
        if($sql > 0){
            $deleteExistingData = Cart::where('size', $request->size)
                ->where('product_id',$request->product_id)
                ->where('id','!=',$request->cart_id)
                ->delete();


            $getCartQtyOfProduct = Cart::where('product_id',$request->product_id)
                ->where('id',$request->cart_id)
                ->first();

            $ff = $getCartQtyOfProduct->cartqty * $request->price;

            $updateData = Cart::where('product_id',$request->product_id)
                ->where('id',$request->cart_id)
                ->update(['size' => $request->size, 'subtotal' => $ff ,'price' => $request->price
                ]);

        }else{
            $getCartQtyOfProduct = Cart::where('product_id',$request->product_id)
                ->where('id',$request->cart_id)
                ->first();

            $ff = $getCartQtyOfProduct->cartqty * $request->price;

            $updateData = Cart::where('product_id',$request->product_id)
                ->where('id',$request->cart_id)
                ->update(['size' => $request->size, 'subtotal' => $ff ,'price' => $request->price
                ]);

            $cartCount = Cart::where('ip_address',$user_ip)->count();
            $productsubtotal = Cart::where('ip_address',$user_ip)
                ->where('id',$request->cart_id)->select('subtotal')->first();
            $qty = Cart::where('ip_address',$user_ip)
                ->where('id',$request->cart_id)
                ->select('cartqty')->first();
            $cartSubtotal = Cart::where('ip_address',$user_ip)->sum('subtotal');

            return response()->json(['code'=>301,
                'cartCount' => $cartCount,
                'subtotal' => $productsubtotal,
                'qty' => $qty,
                'cartSubtotal' => $cartSubtotal,
                'status' => 'Cart Updated'
            ]);
        }

    }


    function updateQtyCart(Request $request){
        $user_ip = $this->getUserIP();

//        Array ( [product_id] => 4 [cartqty] => 2 [price] => 700 [cart_id] => 1 )
        $getCartQtyOfProduct = Cart::where('product_id',$request->product_id)
            ->where('id',$request->cart_id)
            ->first();

        $ff = $request->cartqty * $request->price;
        $sumofMsp = $getCartQtyOfProduct->msp * $request->cartqty;

        $updateData = Cart::where('product_id',$request->product_id)
            ->where('id',$request->cart_id)
            ->update(['cartqty' => $request->cartqty, 'subtotal' => $ff ,'price' => $request->price,
                'sumofmsp' => $sumofMsp
            ]);

        $cartCount = Cart::where('ip_address',$user_ip)->count();
        $productsubtotal = Cart::where('ip_address',$user_ip)
            ->where('id',$request->cart_id)->select('subtotal')->first();
        $qty = Cart::where('ip_address',$user_ip)
            ->where('id',$request->cart_id)
            ->select('cartqty')->first();
        $cartSubtotal = Cart::where('ip_address',$user_ip)->sum('subtotal');

        return response()->json(['code'=>301,
            'cartCount' => $cartCount,
            'subtotal' => $productsubtotal,
            'qty' => $qty,
            'cartSubtotal' => $cartSubtotal,
            'status' => 'Cart Updated'
        ]);

    }

    function deleteFromCart($id){
//        print_r($id);return false;
        $delete = Cart::where('id', $id)->delete();
        if ($delete == 1) {
            $success = true;
            $message = "Product Removed from cart";
        } else {
            $success = true;
            $message = "Product not found";
        }
        return response()->json([
            'success' => $success,
            'message' => $message,
        ]);
    }

    public function updateCart(Request $request)
    {
        $cartId = $request->input('cartId');
        $quantity = $request->input('quantity');

        // Update the cart in the database
        $cart = Cart::find($cartId);
        $cart->cartqty = $quantity;
        $cart->subtotal = $cart->price * $quantity; // You may need to calculate the subtotal based on the price and quantity
        $cart->save();

        // Return the updated subtotal to the frontend
        return response()->json(['updatedSubtotal' => $cart->subtotal]);
    }

    public function checkCoupon(Request $request)
    {
         $couponCode = $request->input('coupon_code');

        $couponDetails = Offer::where('code',$couponCode)->first();

        // Implement your logic here to verify the coupon code and calculate the discount amount

        $cartTotal = \App\Models\Cart::where('ip_address',$_SERVER['REMOTE_ADDR'])
            ->sum('subtotal');
        // For example, let's assume the discount percentage is 10%
        if (!$couponDetails) {
            // Coupon code is invalid or not found
            return response()->json(['error' => 'Invalid coupon code'], 422);
        }


    // Apply the discount based on the discount type
    if ($couponDetails->discount_type === 'flat') {
        // Flat amount deduction
        $discountAmount = $couponDetails['percentage_discount'];
    } elseif ($couponDetails->discount_type === 'percent') {
        // Percentage deduction
        $discountPercentage = $couponDetails['percentage_discount'];
        $discountAmount = ($discountPercentage / 100) * $cartTotal;
    } else {
        // Invalid discount type
        return response()->json(['error' => 'Invalid discount type'], 422);
    }

    // Calculate the discounted total
    $discountedTotal = $cartTotal - $discountAmount;

//    print_r($discountedTotal);die;

    // Store the applied coupon code and discounted total in the session
    Session::put('applied_coupon', $couponCode);
    Session::put('discounted_total', $discountedTotal);

    return response()->json(['discounted_total' => $discountedTotal]);
    }


    function checkout(){
        if(Auth::user()){

        $data['page_heading'] = 'Checkout';
        $cartItems = \App\Models\Cart::where('ip_address',$_SERVER['REMOTE_ADDR'])
            ->with([
                'car_color','car_manufacturer','car_variation',
                'bike_color','bike_variation','bike_manufacturer'
            ])
            ->get();

        Session::put('getAllCartSession',$cartItems);

        $cartDetails = [];

        foreach ($cartItems as $item) {
            if (!empty($item->bike_id)) {
                // Fetch details from the bike relationship
                $details = [
                    'type' => 'bike',
                    'color' => $item->bike_color->color,
                    'manufacturer' => $item->bike_manufacturer->name, // Assuming manufacturer relationship remains the same
                    'variation' => $item->bike_variation->variation,
                    'mrp' => $item->mrp,
                    'id' => $item->id,
                    'price' => $item->price,
                    'subtotal' => $item->subtotal,
                    'cartqty' => $item->cartqty,
                    'bike_id' => $item->bike_id,
                    'color_id' => $item->color_id,
                    'variation' => $item->variation,

                    'image' => $item->image, // Change this to the correct image column name
                    // ... other fields
                ];
            } elseif (!empty($item->car_id)) {
                // Fetch details from the car relationship
                $details = [
                    'type' => 'car',
                    'color' => $item->car_color->color,
                    'manufacturer' => $item->car_manufacturer->name, // Assuming manufacturer relationship remains the same
                    'variation' => $item->car_variation->variation, // quantity 100ml.500ml
                    'mrp' => $item->mrp,
                    'id' => $item->id,
                    'price' => $item->price,
                    'subtotal' => $item->subtotal,
                    'cartqty' => $item->cartqty,
                    'car_id' => $item->car_id,
                    'color_id' => $item->color_id,
                    'variation' => $item->variation,
                    'image' => $item->image, // Change this to the correct image column name
                    // ... other fields
                ];
            } elseif (!empty($item->product_id)) {
                // Fetch details from the car relationship
                $get_product = Product::find($item->product_id);
                $details = [
                    'product_id' => $get_product->id,
                    'manufacturer' => $get_product->title,
                    'type' => 'product',
                    'mrp' => $item->mrp,
                    'id' => $item->id,
                    'price' => $item->price,
                    'subtotal' => $item->subtotal,
                    'cartqty' => $item->cartqty,
                    'image' => $get_product->photo, // Change this to the correct image column name
                    // ... other fields
                ];
            } else {
                // Handle the case where neither bike_id nor car_id is present
            }

            $cartDetails[] = $details;
        }

        $data['getAllCart'] = $cartDetails;

        return view('web.checkout',$data);

        }else{
            return redirect(url("/login"));
        }
    }




}
