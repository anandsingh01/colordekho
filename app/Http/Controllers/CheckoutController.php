<?php

namespace App\Http\Controllers;
use App\Models\BikeManufacturerModel;
use App\Models\CarManufacturerModel;
use App\Models\Category;
use App\Models\User;
use App\Models\UserAddress;
use Bavix\Wallet\Models\Transaction;
use DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Str;
use Intervention\Image\Point;
use Razorpay\Api\Order;
use Session;
use App\Models\Cart;
use App\Models\OrdersModel;
use App\Models\OrderDetails;
use App\Models\DeliverAddress;
use App\Models\Points;
use App\Models\ComissionModel;
use App\Models\TransferCommission;
use App\Models\Product;
use App\Models\Coupon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\SaveAppliedDiscount;

use Razorpay\Api\Api;
use Exception;

use Stripe;

use Stripe\Error\Card;
use Stripe\StripeClient;

class CheckoutController extends Controller
{
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

    function cart(){
        if(Auth::check()){
            $userid = Auth::user()->id;
            $data['title'] = 'Home';
            $data['cart'] = Cart::select('carts.*',
                'product_size_attributes.size as sizeName',
                'product_size_attributes.msp as productMspFromsizeAttr',
                'product_size_attributes.flash_price as flash_price',
                'product_size_attributes.discount_pecent as discount_pecent',
                'product_size_attributes.qty as productInventoryFromSizeAttr',
                'product_size_attributes.price as productSizePrice',
                'product_size_attributes.qty as productSizeqty'
            )
                ->leftJoin("product_size_attributes",'carts.size','product_size_attributes.id')
                ->where('carts.status','yes')
                ->where('carts.ip_address',$_SERVER['REMOTE_ADDR'])
                ->orWhere('carts.user_id',$userid)
                ->with(['getProducts','getBrands','getSections'])
                ->get();

            $data['cart_count'] = $data['cart']->count();
            $data['cart_price'] = $data['cart']->sum('subtotal');
            $data['cart_msp'] = $data['cart']->sum('msp');
            $data['sumof_msp'] = '';


            foreach($data['cart'] as $cartData){
                $data['sumof_msp'] = $cartData->sum('sumofmsp');
                $data['discountonmrp'] = $data['sumof_msp'] - $cartData->sum('subtotal');
            }

            $data['getCouponsaboveCartValue'] = Coupon::where('min_cart_value','>=',$data['cart_price'])->get();
            $data['getCouponsbelowCartValue'] = Coupon::where('min_cart_value','<=',$data['cart_price'])->get();


            if(Auth::check()){
                $userData = Auth::user()->id;
            }else{
                $userData = $_SERVER['REMOTE_ADDR'];
            }
            $data['getAppliedCoupon'] = '';
            if(Auth::check()){
                $userid = Auth::user()->id;
                $userIp = $this->getUserIP();
            }else{
                $userIp = $this->getUserIP();
            }
            $data['getAppliedCoupon'] = SaveAppliedDiscount::where([
                'ip_address' => $userIp,
                'userid' => $userid,
                'is_active' => 'yes',
                'is_used' => 'no',
            ])->first();

            if(!empty($data['getAppliedCoupon'])){
                $data['Appliedcoupons'] =
                    [
                        'coupon_Code' => $data['getAppliedCoupon']->coupon_code,
                        'coupon_discount_type' =>$data['getAppliedCoupon']->couponDiscountType,
                        'coupondiscount' =>$data['getAppliedCoupon']->coupon_discount_amount
                    ];
            }else{
                $data['Appliedcoupons'] =
                    [
                        'coupon_Code' => 0,
                        'coupon_discount_type' => 0,
                        'coupondiscount' => 0
                    ];
            }

            $getpoints = Points::select('points_credit','points_debit')->where('user_id',$userid)->get();
            $data['getpoints'] = $getpoints->sum('points_credit');



            return view('web.cart', $data);
        }else{
            return redirect('/login');
        }
    }

    function applied_discount_amount(Request $request){
        $sql = new SaveAppliedDiscount ;

        $couponDetails = [
            'couponCode' => $request->couponCode,
            'couponDiscountType' => $request->couponDiscountType,
            'coupondiscount' => $request->coupondiscount,
            'couponAmount' => $request->couponAmount,
        ];
        if(Auth::check()){
            $userid = Auth::user()->id;
            $userIp = $this->getUserIP();
        }else{
            $userIp = $this->getUserIP();
        }
        $sql->coupon_code = $request->couponCode;
        $sql->coupon_discount_amount = $request->couponAmount;
        $sql->couponDiscountType = $request->couponDiscountType;
        $sql->ip_address = $userIp;
        $sql->userid = $userid;
        $sql->is_active = 'yes';
        $sql->is_used = 'no';

        if($sql->save()){
            $getAppliedCoupon = SaveAppliedDiscount::where([
                'ip_address' => $userIp,
                'userid' => $userid,
                'is_active' => 'yes',
                'is_used' => 'no',
            ])->first();
            return response()->json(['code' => 200 ,
                'coupon_Code' => $couponDetails['couponCode'],
                'coupon_discount_amount' =>$couponDetails['coupondiscount'],
                'coupon_discount_type' =>$couponDetails['couponDiscountType'],
                'coupondiscount' =>$couponDetails['couponAmount']
            ]);
        }

    }

    function removeCoupon(){
        if(Auth::check()){
            $userData = Auth::user()->id;
        }else{
            $userData = $_SERVER['REMOTE_ADDR'];
        }

        $sql = SaveAppliedDiscount::where('ip_address',$userData)->delete();
        return redirect($_SERVER['HTTP_REFERER']);
    }

    function address(){
        if(Auth::check()){

            $data['title'] = 'Home';
            $userid = Auth::user()->id;

            $data['totalamount'] = base64_decode($_GET['totalamount']);
            $data['getpointsValue'] = $_GET['getpointsValue'];
            if(!empty($_GET['additional_coupon'])){
                $data['additionalcoupon'] = base64_decode($_GET['additional_coupon']);
            }else{
                $data['additionalcoupon'] = 0;
            }
            $data['coupon_discount_amount'] = base64_decode($_GET['coupon_discount_amount']);
            $data['couponDiscountType'] = base64_decode($_GET['couponDiscountType']);
            $data['coupon_code'] = base64_decode($_GET['coupon_code']);

            $data['cart'] = Cart::select('carts.*',
                'product_size_attributes.size as sizeName',
                'product_size_attributes.msp as productMspFromsizeAttr',
                'product_size_attributes.flash_price as flash_price',
                'product_size_attributes.discount_pecent as discount_pecent',
                'product_size_attributes.qty as productInventoryFromSizeAttr',
                'product_size_attributes.price as productSizePrice',
                'product_size_attributes.qty as productSizeqty'


            )
                ->leftJoin("product_size_attributes",'carts.size','product_size_attributes.id')
                ->where('carts.status','yes')
                ->where('carts.ip_address',$this->getUserIP())
                ->orWhere('carts.user_id',$userid)
                ->with(['getProducts','getBrands','getSections'])
                ->get();

            $data['cart_count'] = $data['cart']->count();
            $data['cart_price'] = $data['cart']->sum('subtotal');
            $data['cart_msp'] = $data['cart']->sum('msp');
            $data['sumof_msp'] = '';


            foreach($data['cart'] as $cartData){
                $data['sumof_msp'] = $cartData->sum('sumofmsp');
                $data['discountonmrp'] = $data['sumof_msp'] - $cartData->sum('subtotal');
            }

            $data['getCouponsaboveCartValue'] = Coupon::where('min_cart_value','>=',$data['cart_price'])->get();
            $data['getCouponsbelowCartValue'] = Coupon::where('min_cart_value','<=',$data['cart_price'])->get();


            if(Auth::check()){
                $userid = Auth::user()->id;
                $userIp = $this->getUserIP();
            }else{
                $userIp = $this->getUserIP();
            }
            $data['getAppliedCoupon'] = '';
            $getAppliedCoupon = SaveAppliedDiscount::where([
                'ip_address' => $userIp,
                'userid' => $userid,
                'is_active' => 'yes',
                'is_used' => 'no',
            ])->first();

            $data['deliveryAddress'] = DeliverAddress::where('addedby',Auth::user()->id)->get();

            return view('web.address', $data);
        }else{
            return redirect('/login');
        }

    }

    function saveaddress(Request $request){
        $sql = new DeliverAddress;
        $sql->name = $request->name;
        $sql->mobile = $request->mobile;
        $sql->address_one = $request->address_one;
        $sql->address_two = $request->address_two;
        $sql->pincode = $request->pincode;
        $sql->city = $request->city;
        $sql->state = $request->state;
        $sql->landmark = $request->landmark;
        $sql->address_type = $request->addresstype;
        $sql->is_default_address = $request->is_default;
        $sql->addedby = Auth::user()->id;
        $sql->user_email = Auth::user()->email;
        if($sql->save()){
            return response()->json(['code'=>200]);
        }
    }

    function updateAddress(Request $request){
        if(!Auth::check()){
            return redirect(route("frontendlogin"));
        }
        $sql = DeliverAddress::find($request->addressid);

        $sql->name = $request->name;
        $sql->mobile = $request->mobile;
        $sql->address_one = $request->address_one;
        $sql->address_two = $request->address_two;
        $sql->pincode = $request->pincode;
        $sql->city = $request->city;
        $sql->state = $request->state;
        $sql->landmark = $request->landmark;
        $sql->address_type = $request->addressType;
        $sql->is_default_address = $request->is_default;
        $sql->addedby = Auth::user()->id;
        $sql->user_email = Auth::user()->email;
        if($sql->save()){
            return response()->json(['code'=>200]);
        }
    }

    function thankyou(){
        $data['title'] = 'Thankyou';
        $data['order'] = OrdersModel::where('user_id',Auth::user()->id)->orderBy('id','DESC')->first();
        $data['orderDetails'] = OrderDetails::with(['getVendorByProductid'])
            ->select('order_details.*','shops.*','products.*')
            ->leftJoin('products','order_details.product_id','products.id')
            ->leftJoin('shops','order_details.product_added_by','shops.user_id')
            ->where('order_details.user_id',Auth::user()->id)
            ->where('order_details.order_id', $data['order']->order_id)
            ->orderBy('order_details.id','DESC')
            ->get();
        print_r($data);die;
        return view('web.thankyou',$data);
    }

    public function checkout_submit(Request $request)
    {

        if(Session::has('getAllCartSession')){
            $getAllCart = Session::get('getAllCartSession');
        }

         Session::put('products_details',$request->all());

        // Check if the save_address checkbox is checked
        if ($request->has('save_address') && auth()->check()) {
            // Save the address to the user's profile
            $userAddress = new UserAddress();
            $userAddress->user_id = auth()->user()->id;
            $userAddress->first_name = $request->input('first_name');
            $userAddress->last_name = $request->input('last_name');
            $userAddress->company_name = $request->input('company_name');
            $userAddress->country = $request->input('country');
            $userAddress->address_1 = $request->input('address_1');
            $userAddress->address_2 = $request->input('address_2');
            $userAddress->city = $request->input('city');
            $userAddress->state = $request->input('state');
            $userAddress->pincode = $request->input('pincode');
            $userAddress->phone = $request->input('phone');
            $userAddress->email = $request->input('email');

            $userAddress->save();
        }

        $order_id = uniqid();

        $order = \App\Models\Order::create([
            'order_id' => $order_id,
            'ip_address' => $_SERVER['REMOTE_ADDR'],
            'user_id' => Auth::user()->id ?? '',
            'first_name' => $request->input('first_name'),
            'last_name' => $request->input('last_name'),
            'country' => $request->input('country'),
            'address_1' => $request->input('address_1'),
            'address_2' => $request->input('address_2'),
            'city' => $request->input('city'),
            'state' => $request->input('state'),
            'pincode' => $request->input('pincode'),
            'phone' => $request->input('phone'),
            'email' => $request->input('email'),
            'final_amount' => $request->input('final_amount'),
            'coupon_code' => $request->input('coupon_code'),
            'sales_tax' => $request->input('sales_tax'),
            'shipping_price' => $request->input('shipping_price'),
            'status' => '0',
        ]);

        Session::put('order_details',$order);


        // Assuming $order is an instance of your Order model
        $type = $request->input('type');
        $variations = $request->input('variation');
        $color_id = $request->input('color_id');
        $prices = $request->input('price');
        $cartqty = $request->input('cartqty');
        $car_id = $request->input('car_id');
        $bike_id = $request->input('bike_id');

//        print_r($request->all());die;

//        print_r($type);die;
        if (
            $variations && $color_id && $prices && $cartqty && ($car_id || $bike_id) &&
            count($variations) === count($color_id) &&
            count($variations) === count($prices) &&
            count($variations) === count($cartqty)
        ) {
            for ($i = 0; $i < count($variations); $i++) {
                $productData = [
                    'type' => $type[$i],
                    'attribute_id' => $variations[$i],
                    'quantity' => $cartqty[$i],
                    'price' => $prices[$i],
                    // ... add more fields here
                ];



                if ($car_id[$i]) {
                    // If car_id is present, store the product relation with car details
                    $car = CarManufacturerModel::find($car_id[$i]);
                    if ($car) {
                        $order->products()->attach($car->id, $productData);
                    }
                } elseif ($bike_id[$i]) {
                    // If bike_id is present, store the product relation with bike details
                    $bike = BikeManufacturerModel::find($bike_id[$i]);
                    if ($bike) {
                        $order->products()->attach($bike->id, $productData);
                    }
                }
            }
        } else {
        }

//        die;

        // Redirect the user to a success page or thank-you page
        return redirect()->route('checkout.payment');
    }

    function stripe_integrate(){

        if(Session::has('order_details')){
            $getOrderSession = Session::get('order_details');
        }

        if(!empty($getOrderSession)){
            // Store the required data in the state parameter
            $stateData = array(
                'total_without_cst' => $getOrderSession->final_amount,
                'price' => $getOrderSession->final_amount,
                'qtys' => 1,
                'ids' => 1,
                'totalAmount' =>  $getOrderSession->final_amount,
                'useremail' => Auth::user()->email,
                'contact' => Auth::user()->mobile_number,
                'userid' => Auth::user()->id,
                'username' => Auth::user()->name
            );
        }



// Encode and prepare the state parameter for the URL
        $stateParam = urlencode(json_encode($stateData));

// Your existing PhonePe API request code here...
// (You can replace this section with your original code that retrieves the payment URL from PhonePe)
        $data = array(
            'merchantId' => 'MERCHANTUAT',
            'merchantTransactionId' => uniqid(),
            'merchantUserId' => 'MUID123',
            'amount' => 1000,
            'redirectUrl' => url('/payment/success').'?state=' . $stateParam, // Include the state parameter in the redirect URL
            'redirectMode' => 'POST',
            'callbackUrl' => url('/payment/success'), // Replace 'response.php' with the correct path to your response handling script
            'mobileNumber' => '$user_mobile_function',
            'paymentInstrument' => array(
                'type' => 'PAY_PAGE',
            ),
        );

        $encode = base64_encode(json_encode($data));

        $saltKey = '099eb0cd-02cf-4e2a-8aca-3e6c6aff0399';
        $saltIndex = 1;

        $string = $encode . '/pg/v1/pay' . $saltKey;
        $sha256 = hash('sha256', $string);

        $finalXHeader = $sha256 . '###' . $saltIndex;

        // Set up cURL
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, 'https://api-preprod.phonepe.com/apis/merchant-simulator/pg/v1/pay');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'X-VERIFY: ' . $finalXHeader
        ));
        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode(['request' => $encode]));

// Execute cURL request and get the response
        $response = curl_exec($curl);
        curl_close($curl);

// Handle the response
        $rData = json_decode($response, true);


// Extract payment URL from the response
        $paymentUrl = $rData['data']['instrumentResponse']['redirectInfo']['url'];

//        print_r($paymentUrl);die;
// Send the payment URL as JSON response
        return redirect($paymentUrl);

    }


    function stripe_submit(Request $request){

        Stripe\Stripe::setApiKey('sk_test_51IC66sKDGzpYlWQ2lmnGC7G9G5YFfRXe6oAWJf6mY54ho57zyixhSZV6kteU0148DrLS2wQR7spWezca0byNk7js00UC4sZleI');

        $stripe = new \Stripe\StripeClient('sk_test_51IC66sKDGzpYlWQ2lmnGC7G9G5YFfRXe6oAWJf6mY54ho57zyixhSZV6kteU0148DrLS2wQR7spWezca0byNk7js00UC4sZleI');

        $method = \Stripe\PaymentMethod::create([
            'type' => 'card',
            'card' => [
                'number' => $request->card_no,
                'exp_month' => $request->exp_month,
                'exp_year' => $request->exp_year,
                'cvc' => $request->cvc,
            ],
        ]);

        $data = $stripe->paymentIntents->create(
            [
                'amount' => 100 * 100,
                'currency' => 'INR',
                'description' => 'Lifragrances',
                'payment_method_types' => ['card'],
                'payment_method' => $method->id,
                'confirm'=> true
            ]
        );

//        print_r($data);die;

        if($data['status'] == 'succeeded') {

            $orderData = \App\Models\Order::find($request->order_primary_key);
//            print_r($orderData);die;
            $orderData->payment_intent_id = $data['id'];
            $orderData->payment_method = $data['payment_method'];
            $orderData->transaction_status = $data['status'];
            $orderData->status = '1';
            $orderData->save();

//            $getTourName = \App\Models\Tour::find($orderData->tour_id);
//            $Category = \App\Models\Category::find($getTourName->category);
//
//
//            $useremail = $orderData->email;
//
//            // $subject='Hooray! Your'. $orderData->first_name.' '.$orderData->last_name .'tour booking is confirmed.';
//
//            $subject = 'Hooray! Your'.$orderData->first_name.' '.$orderData->last_name. 'tour booking is confirmed. ';
//
//            $fromSend = 'info@mumbaimoments.com';
//            $email = 'anandsingh678970@gmail.com';
//
//            $data2['tourname'] = $getTourName->title;
//            $data2['meetinglocation'] = $getTourName->service_tour_meeting_point;
//
//            $data2['order_id'] = $orderData->order_id;
//            $data2['members'] = $orderData->members;
//            $data2['email'] = 'info@mumbaimoments.com';
//            $data2['date'] = date('d M Y, D', strtotime($orderData->date));
//            $data2['phone'] = $orderData->mobile_no;
//            $data2['name'] = $orderData->first_name.' '.$orderData->last_name;
//            $data2['tourtime'] = $orderData->tourtime;
//            $data2['tour_max_price'] = $orderData->tour_max_price;
//
//            $data2['category'] = $Category->category;
//
//            \Mail::send("frontend.booking_confirmation", $data2, function ($message) use ($fromSend, $useremail, $subject) {
//                $message->from($fromSend);
//                $message->subject($subject);
//                $message->to(['info@mumbaimoments.com',$useremail]);
//                // $message->cc(['anandsingh678970@gmail.com']);
//            });

//              die;

            return Redirect::to('/payment/success')->with('order_placed','Order has been placed. We will notify your Tracking Id on email');

        }


    }

    function payment_success(Request $request){
        print_r($request->all());die;
        return view('web.thankyou');
    }

    function get_shipping_details(Request $request){

        $data = array(
            "origin_address" => array(
                "line_1" => "9 N Fordham Rd",
                "state" => "New York",
                "postal_code" => "11801",
                "city" => "Hicksville",
                "company_name" => "Long island Fragrances",
                "contact_name" => "Long island Fragrances",
                "contact_phone" => "5168141663",
                "contact_email" => "lifragrancesny@gmail.com"
            ),
            "destination_address" => array(
                "line_1" => "192 Spadina Ave",
                "state" => "Texas",
                "postal_code" => $request->pincode,
                "city" => "Flower Mound",
                "country_alpha2" => "CA",
                "company_name" => "Test",
                "contact_name" => "Test ",
                "contact_phone" => "7574884",
                "contact_email" => "test@gmail.com"
            ),
            "incoterms" => "DDU",
            "insurance" => array(
                "is_insured" => false
            ),
            "courier_selection" => array(
                "apply_shipping_rules" => true
            ),
            "shipping_settings" => array(
                "units" => array(
                    "weight" => "lb",
                    "dimensions" => "cm"
                )
            ),
            "parcels" => array(
                array(
                    "total_actual_weight" => "1",
                    "box" => array(
                        "slug" => "null",
                        "length" => $request->sum_length,
                        "width" =>  $request->sum_width,
                        "height" =>  $request->sum_height
                    ),
                    "items" => array(
                        array(
                            "quantity" => "1",
                            "dimensions" => array(
                                "length" => $request->sum_length,
                                "width" =>  $request->sum_width,
                                "height" =>  $request->sum_height
                            ),
                            "category" => "health_beauty",
                            "description" => "This is a nice product",
                            "sku" => "PRD-123",
                            "actual_weight" => "5",
                            "declared_currency" => "USD",
                            "declared_customs_value" => 1
                        )
                    )
                )
            )
        );

        $response = \Http::withHeaders([
            "Content-Type" => "application/json",
            "Authorization" => "Bearer prod_Et5YFzWn5FA3co/3ddpC33pzqgjnzjM9CXUtTkPgbCM="
        ])->post("https://api.easyship.com/2023-01/rates", $data);

        return response()->json(json_decode($response->body()));
    }

    public function calculateTax(Request $request)
    {
        Stripe\Stripe::setApiKey('sk_test_51IC66sKDGzpYlWQ2lmnGC7G9G5YFfRXe6oAWJf6mY54ho57zyixhSZV6kteU0148DrLS2wQR7spWezca0byNk7js00UC4sZleI');

        $stripe = new \Stripe\StripeClient('sk_test_51IC66sKDGzpYlWQ2lmnGC7G9G5YFfRXe6oAWJf6mY54ho57zyixhSZV6kteU0148DrLS2wQR7spWezca0byNk7js00UC4sZleI');

        $response = $stripe->tax->calculations->create([
            'currency' => 'usd',
            'line_items' => [
                [
                    'amount' => 1000,
                    'reference' => 'L1',
                ],
            ],
            'customer_details' => [
                'address' => [
                    'line1' => '920 5th Ave',
                    'city' => 'Seattle',
                    'state' => 'WA',
                    'postal_code' => $request->input('postal_code'),
                    'country' => 'US',
                ],
                'address_source' => 'shipping',
            ],
            'expand' => ['line_items.data.tax_breakdown'],
        ]);

        $taxAmount = $response->line_items->data[0]->tax_amount;

        return response()->json([
            'taxAmount' => $taxAmount,
            'totalAmount' => 1000 + $taxAmount, // Adjust this as needed based on your product total
        ]);
    }
}
