<?php

namespace App\Http\Controllers;

use App\Models\AboutModels;
use App\Models\AnnualReportModel;
use App\Models\BannerModel;
use App\Models\BikeManufacturerModel;
use App\Models\Blog;
use App\Models\CarManufacturerModel;
use App\Models\Category;
use App\Models\CollaborationModel;
use App\Models\FounderModel;
use App\Models\MetalModel;
use App\Models\MissionModel;
use App\Models\Product;
use App\Models\ProjectDetail;
use App\Models\ProjectModel;
use App\Models\ServiceModel;
use App\Models\SupportModel;
use App\Models\Team;
use App\Models\Goals;
use App\Models\WhoWeAre;
use App\Models\Payment;
use Carbon\Carbon;
use Easyship\Facades\Easyship;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Session;
use Razorpay\Api\Api;

use Auth;
class HomeController extends Controller
{
    public function index()
    {
        $data['get_hero_banner'] = BannerModel::where([
            'display_area' => '1',
            'status' => '1',
        ])->get();
        $data['car_manufacturer'] = CarManufacturerModel::where([
            'status' => '1',
        ])->get();
        $data['bike_manufacturer'] = BikeManufacturerModel::where([
            'status' => '1',
        ])->get();
//        print_r($data['bike_manufacturer']);die;
        return view('web.index', $data);
    }

    function product_by_category($slug)
    {
        $category = Category::where('slug', $slug)->first();
        if (!empty($category)) {
            $data['get_products'] = Product::where([
                    'section_id' => $category->id,
                    'status' => 'active',
                ]
            )
                ->with('get_brands', 'section')
                ->orderBy('id', 'DESC')
                ->get();
            $data['category'] = $category;
        }
        return view('web.category', $data);
    }

    function product_by_brands($slug)
    {
        $brands = Category::where('slug', $slug)->first();
        if (!empty($brands)) {
            $data['get_products'] = Product::where([
                    'brands_id' => $brands->id,
                    'status' => 'active',
                ]
            )
                ->with('get_brands', 'section')
                ->orderBy('id', 'DESC')
                ->get();
            $data['category'] = $brands;
        }
        return view('web.category', $data);
    }

    function contactus()
    {
        return view('web.contact');
    }


    function products_details($url)
    {
        $data['get_middle_banner'] = BannerModel::where([
            'display_area' => '3',
            'status' => '1',
        ])->orderBy('id', 'DESC')->first();

        $data['product'] = Product::where('slug', $url)
            ->with(
                'getPrices',
                'getGallery',
                'get_brands',
                'section'
            )
            ->first();
        return view('web.product-details', $data);
    }

    public function searchTitle(Request $request)
    {
//        print_r($request->all());die;
        $query = $request->input('query');

//        print_r($query);die;

        // Query the products table for titles matching the query
        $products = Product::where('title', 'like', '%' . $query . '%')->get()->pluck('title', 'slug');

        return $products;
    }

    public function filter(Request $request)
    {
//        $selectedCategories = $request->input('categories', []);
//        $selectedBrands = $request->input('brands', []);
//
//        $filteredProducts = Product::whereIn('section_id', $selectedCategories)
//            ->whereIn('brands_id', $selectedBrands)
//            ->get();
//
//        if ($request->ajax()) {
//            return view('web.filtered_products', ['get_products' => $filteredProducts]);
//        }

        $selectedCategories = $request->input('categories', []);
        $selectedBrands = $request->input('brands', []);

        $query = Product::query();

        if (!empty($selectedCategories)) {
            $query->whereIn('section_id', $selectedCategories);
        }

        if (!empty($selectedBrands)) {
            $query->whereIn('brands_id', $selectedBrands);
        }

        $filteredProducts = $query->get();

        if ($request->ajax()) {
            return view('web.filtered_products', ['get_products' => $filteredProducts]);
        }

    }


    function blogs()
    {

    }

    function get_easyship()
    {

//        9 N Fordham Rd Hicksville 11801 New York - Long island Fragrances Long Island
// Fragrances 5168141663 lifragrancesny@gmail.com

        $ch = curl_init();

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
                "state" => "US/TX",
                "postal_code" => "75022",
                "city" => "Flower Mound",
                "country_alpha2" => "US",
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
                "apply_shipping_rules" => true,
                'selected_courier_id' => 'a6d078fd-e662-40ce-9efe-84caaa639bf7'
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
                        "length" => "10",
                        "width" => "10",
                        "height" => "10"
                    ),
                    "items" => array(
                        array(
                            "quantity" => "1",
                            "dimensions" => array(
                                "width" => "20",
                                "length" => "20",
                                "height" => "10"
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

        $data_string = json_encode($data);

        curl_setopt($ch, CURLOPT_URL, "https://api.easyship.com/2023-01/rates");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);

        curl_setopt($ch, CURLOPT_POST, TRUE);

        curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);

        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            "Content-Type: application/json",
            "Authorization: Bearer prod_Et5YFzWn5FA3co/3ddpC33pzqgjnzjM9CXUtTkPgbCM="
        ));

        $response = curl_exec($ch);
        curl_close($ch);

        print_r(json_decode($response));

        die;
    }

    function ship(){


        $curl = curl_init();

        curl_setopt_array($curl, [
            CURLOPT_URL => "https://api.easyship.com/2023-01/shipments",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode([
                'origin_address' => [
                    'line_1' => '9 N Fordham Rd',
                    'state' => 'US/NY',
                    'city' => 'Hicksville',
                    'postal_code' => '11801',
                    'country_alpha2' => 'US',
                    'company_name' => 'test',
                    'contact_name' => 'test',
                    'contact_phone' => '+15168141663',
                    'contact_email' => 'test@test.com'
                ],
                'sender_address' => [
                    'line_1' => '9 N Fordham Rd',
                    'state' => 'US/NY',
                    'city' => 'Hicksville',
                    'postal_code' => '11801',
                    'country_alpha2' => 'US',
                    'company_name' => 'test',
                    'contact_name' => 'test',
                    'contact_phone' => '+15168141663',
                    'contact_email' => 'test@test.com'
                ],
                'return_address' => [
                    'line_1' => '9test d',
                    'state' => 'US/NY',
                    'city' => 'Hicksville',
                    'postal_code' => '11801',
                    'country_alpha2' => 'US',
                    'company_name' => 'test',
                    'contact_name' => 'test',
                    'contact_phone' => '+15168141663',
                    'contact_email' => 'test@test.com'
                ],
                'destination_address' => [
                    'line_1' => '2451 lakeside pkwy',
                    'state' => 'Texas',
                    'city' => 'Hicksville',
                    'postal_code' => '11801',
                    'country_alpha2' => 'US',
                    'contact_name' => 'TEST',
                    'contact_phone' => '+14805279803',
                    'contact_email' => 'lifragrancesny@gmail.com'
                ],
                'incoterms' => 'DDU',
                'insurance' => [
                    'is_insured' => false
                ],
                'courier_selection' => [
                    'selected_courier_id' => 'a6d078fd-e662-40ce-9efe-84caaa639bf7',
                    'allow_courier_fallback' => false,
                    'apply_shipping_rules' => true
                ],
                'shipping_settings' => [
                    'additional_services' => [
                        'qr_code' => 'none'
                    ],
                    'units' => [
                        'weight' => 'kg',
                        'dimensions' => 'cm'
                    ],
                    'buy_label' => false,
                    'buy_label_synchronous' => false,
                    'printing_options' => [
                        'format' => 'png',
                        'label' => '4x6',
                        'commercial_invoice' => 'A4',
                        'packing_slip' => '4x6'
                    ]
                ],
                'parcels' => [
                    [
                        'box' => [
                            'length' => 3.93,
                            'width' => 3.93,
                            'height' => 3.93,
                            'slug' => 'null'
                        ],
                        'items' => [
                            [
                                'dimensions' => [
                                    'length' => 1,
                                    'width' => 1,
                                    'height' => 1
                                ],
                                'category' => 'health_beauty',
                                'description' => 'This is a nice product',
                                'sku' => 'PRD-123',
                                'contains_battery_pi966' => false,
                                'contains_battery_pi967' => false,
                                'origin_country_alpha2' => 'US',
                                'quantity' => 1,
                                'contains_liquids' => false,
                                'actual_weight' => 5,
                                'declared_currency' => 'USD',
                                'declared_customs_value' => 1
                            ]
                        ],
                        'total_actual_weight' => 1,
                        'selected_courier_id' =>  '2030dd90-a00d-4fec-bc9d-f71e006419c2',
                    ]
                ]
            ]),
            CURLOPT_HTTPHEADER => [
                "accept: application/json",
                "authorization: Bearer prod_Et5YFzWn5FA3co/3ddpC33pzqgjnzjM9CXUtTkPgbCM=",
                "content-type: application/json"
            ],
        ]);

        $response = curl_exec($curl);

        print_r(json_decode($response));die;


        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            echo $response;
        }


    }

    function save_review(Request $request){
//        print_r($request->all());
        if(Auth::check()){
            $username = Auth::user()->name;
        }else{
            $username = 'Anonymous';
        }

        $review = new \App\Models\ReviewModel;
        $review->username = $username ?? 'users';
        $review->product_id = $request->product_id;
        $review->rating = $request->rating;
        $review->review = $request->review;
        $review->status = 0;

        if($review->save()){
            return redirect()->back()->with('review_success','Review will update soon');
        }
    }

//    create shipment

//function creatE_shipment(Request $request){
//    $items = [];
//
//    foreach ($request->product_name as $key => $value) {
//        $item = [
//            'description' => 'null',
//            'category' => 'health_beauty', // Modify as needed
//            'sku' => 'Prod_id'.$request->product_id[$key].'-'.$request->product_name[$key],
//            'declared_currency' => 'USD', // Modify as needed
//            'declared_customs_value' => (int)$request->price[$key],
//            'quantity' => (int)$request->qty[$key],
//        ];
////            print_r($item);
//
//        $items[] = $item;
//    }
//
//    $curl = curl_init();
//
//    curl_setopt_array($curl, [
//        CURLOPT_URL => "https://api.easyship.com/2023-01/shipments",
//        CURLOPT_RETURNTRANSFER => true,
//        CURLOPT_ENCODING => "",
//        CURLOPT_MAXREDIRS => 10,
//        CURLOPT_TIMEOUT => 30,
//        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
//        CURLOPT_CUSTOMREQUEST => "POST",
//        CURLOPT_POSTFIELDS => json_encode([
//            'origin_address' => [
//                'line_1' => '9 N Fordham Rd',
//                'state' => 'New York',
//                'city' => 'Hicksville',
//                'postal_code' => '11801',
//                'country_alpha2' => 'US',
//                'company_name' => 'Long island Fragrances',
//                'contact_name' => 'Long island Fragrances',
//                'contact_phone' => '5168141663',
//                'contact_email' => 'lifragrancesny@gmail.com',
//            ],
//            'sender_address' => [
//                'line_1' => '9 N Fordham Rd',
//                'state' => 'New York',
//                'city' => 'Hicksville',
//                'postal_code' => '11801',
//                'country_alpha2' => 'US',
//                'company_name' => 'Long island Fragrances',
//                'contact_name' => 'Long island Fragrances',
//                'contact_phone' => '5168141663',
//                'contact_email' => 'lifragrancesny@gmail.com',
//            ],
//            'return_address' => [
//                'line_1' => '9 N Fordham Rd',
//                'state' => 'New York',
//                'city' => 'Hicksville',
//                'postal_code' => '11801',
//                'country_alpha2' => 'US',
//                'company_name' => 'Long island Fragrances',
//                'contact_name' => 'Long island Fragrances',
//                'contact_phone' => '5168141663',
//                'contact_email' => 'lifragrancesny@gmail.com',
//            ],
//            'destination_address' => [
//                'line_1' => $request->address_1,
//                'line_2' => $request->address_2,
//                'state' => $request->state,
//                'city' => $request->city,
//                'postal_code' => $request->pincode,
//                'country_alpha2' => 'US',
//                'contact_name' => $request->first_name .' '. $request->last_name ,
//                'contact_email' => $request->email,
//                'contact_phone' => $request->phone
//            ],
//            'incoterms' => 'DDU',
//            'insurance' => [
//                'is_insured' => false,
//            ],
//            'order_data' => [
//                'platform_name' => 'API',
//                'platform_order_number' => rand(111111,999999),
//                'order_tag_list' => [
//                    null
//                ],
//                'seller_notes' => 'null',
//                'buyer_notes' => 'null'
//            ],
//            'courier_selection' => [
//                'allow_courier_fallback' => true,
//                'apply_shipping_rules' => false,
//                'selected_courier_id' => $request->selected_courier,
//                'list_unavailable_couriers' => true
//            ],
//            'shipping_settings' => [
//                'additional_services' => [
//                    'qr_code' => 'none',
//                    'delivery_confirmation' => 'ups_delivery_confirmation_verbal'
//                ],
//                'units' => [
//                    'weight' => 'lb',
//                    'dimensions' => 'cm'
//                ],
//                'buy_label' => false,
//                'buy_label_synchronous' => false,
//                'printing_options' => [
//                    'format' => 'png',
//                    'label' => '4x6',
//                    'commercial_invoice' => 'A4',
//                    'packing_slip' => '4x6'
//                ]
//            ],
//            'parcels' => [
//                [
//                    'box' => [
//                        'slug' => 'null',
//                        'length' => $request->sum_length[0],
//                        'width' => $request->sum_width[0],
//                        'height' => $request->sum_height[0]
//                    ],
//                    'items' => $items,
//                    'total_actual_weight' => 1
//                ]
//            ]
//        ]),
//        CURLOPT_HTTPHEADER => [
//            "accept: application/json",
//            "authorization: Bearer prod_Et5YFzWn5FA3co/3ddpC33pzqgjnzjM9CXUtTkPgbCM=",
//            "content-type: application/json"
//        ],
//    ]);
//
//    $response = curl_exec($curl);
//    $err = curl_error($curl);
//
//    curl_close($curl);
//
//    if ($err) {
//        echo "cURL Error #:" . $err;
//    } else {
//        echo $response;
//    }
//
//    if(!empty(json_decode($response))){
//        Session::put('shpping_rates',$response);
//    }
//}

function send_enquiry(Request $request){
//        print_r($request->all());die;

    // Get form data
    $name = $request->name;
    $phone = $request->phone;
    $email = $request->email;
    $message =  $request->message;

    $enquiry = new \App\Models\Enquiry;
    $enquiry->name = $name;
    $enquiry->phone = $phone;
    $enquiry->email = $email;
    $enquiry->message = $message;

    $enquiry->save();


    // print_r($message);die;

    // Validate form data (you can add your own validation here)

    // Prepare email message
    $to = "anandsingh678970@gmail.com";
    $subject = "New Contact Form Submission";
    $email_content = "Name: " . $name . "\n";
    $email_content .= "Phone: " . $phone . "\n";
    $email_content .= "Email: " . $email . "\n";
    $email_content .= "Message: " . $message . "\n";
    $headers = "From: " . $email . "\r\n";

    // Send email
    if (mail($to, $subject, $email_content, $headers)) {
        // Email sent successfully
        $success_message = "Thank you for your message. We will get back to you soon.";

        Session::flash('enquiry_sent',$success_message);
        return redirect($_SERVER['HTTP_REFERER']);
    } else {
        // Error sending email
        $success_message = "Oops! Something went wrong. Please try again later.";
        Session::flash('enquiry_sent',$success_message);
        return redirect($_SERVER['HTTP_REFERER']);

    }
}
}
