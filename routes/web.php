<?php

use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CommonController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OfferController;
use App\Http\Controllers\SubcategoryController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Http\Controllers\Auth\LoginController;



Route::get('login', [LoginController::class, 'login_page']);

Route::post('check-login', [LoginController::class, 'check_login']);

Route::get('login/google', [LoginController::class, 'redirectToGoogle'])->name('login.google');
Route::get('auth/google/callback', [LoginController::class, 'handleGoogleCallback']);

Route::get('login/facebook', [LoginController::class, 'redirectToFacebook'])->name('login.facebook');
Route::get('/facebook/callback', [LoginController::class, 'handleFacebookCallback']);




Route::post('/register', [\App\Http\Controllers\Auth\RegisterController::class, 'register'])->name('register');
Route::get('email/verify', function () {
    return view('auth.verify');
})->name('verification.notice');

Route::post('send-otp', [RegisterController::class, 'send_otp'])->name('send-otp');
Route::post('verify-otp', [RegisterController::class, 'verify_otp'])->name('verify-otp');

Route::post('/email/verify/resend',  [\App\Http\Controllers\Auth\VerificationController::class, 'resend']);


Route::get('/', [App\Http\Controllers\HomeController::class, 'index']);
Route::get('for/{slug}', [App\Http\Controllers\HomeController::class, 'product_by_category']);
Route::get('brands/{slug}', [App\Http\Controllers\HomeController::class, 'product_by_brands']);


Route::get('support-us', [App\Http\Controllers\HomeController::class, 'supportus']);
Route::get('contact-us', [App\Http\Controllers\HomeController::class, 'contactus']);
Route::post('save-contact-us', [App\Http\Controllers\HomeController::class, 'savecontactus']);

Route::get('privacy-policy', function (){
    return view('web.privacy-policy');
});


Route::get('products/{url}', [HomeController::class, 'products_details']);
Route::get('/search', [HomeController::class, 'searchTitle']);
Route::get('/filter', [HomeController::class, 'filter']);
Route::get('offers/{url}', [HomeController::class, 'sustainability_overview']);
Route::get('social-impact/{url}', [HomeController::class, 'social_impact']);
//Route::get('offers/stewardship', [HomeController::class, 'sustainability_stewardship']);
Route::get('service/{url}', [HomeController::class, 'get_service']);
Route::get('/checkout/cart', [App\Http\Controllers\CartController::class,'getAllCartsProducts'])->name('checkout.cart');
Route::get('/checkout', [App\Http\Controllers\CartController::class,'checkout']);

Route::post('/addToWishlist', [App\Http\Controllers\WishlistController::class,'addToWishlist'])->name('addToWishlist');
Route::post('/addToCart', [App\Http\Controllers\CartController::class,'addToCart'])->name('addToCart');
Route::post('/addToCartBike', [App\Http\Controllers\CartController::class,'addToCartBike'])->name('addToCartBike');
Route::post('/updateSizeCart', [App\Http\Controllers\CartController::class,'updateSizeCart'])->name('updateSizeCart');
Route::post('/updateQtyCart', [App\Http\Controllers\CartController::class,'updateQtyCart'])->name('updateQtyCart');

Route::post('/checkout/submit', [CheckoutController::class, 'checkout_submit'])->name('checkout.submit');
Route::get('/checkout/payment', [CheckoutController::class, 'stripe_integrate'])
    ->name('checkout.payment');
Route::post('/stripe/submit', [CheckoutController::class, 'stripe_submit'])->name('stripe.post');
Route::post('/payment/success', [CheckoutController::class, 'payment_success']);

Route::post('updateCart', [App\Http\Controllers\CartController::class,'updateCart']);
//Route::post('checkCoupon', [App\Http\Controllers\CartController::class,'checkCoupon']);
Route::post('/apply-coupon', [App\Http\Controllers\CartController::class,'checkCoupon'])->name('cart.apply_coupon');

Route::get('/delete-from-cart/{id}', [App\Http\Controllers\CartController::class,'deleteFromCart']);

Route::get('user/dashboard', [App\Http\Controllers\UserController::class,'dashboard']);
Route::get('my-profile', [App\Http\Controllers\UserController::class,'dashboard']);
Route::get('my-orders', [App\Http\Controllers\UserController::class,'my_orders']);
Route::post('/update-profile', [App\Http\Controllers\UserController::class,'update'])->name('update-profile');
Route::get('/view-orders/{id}', [App\Http\Controllers\UserController::class,'view_order']);
Route::get('blogs', [App\Http\Controllers\HomeController::class,'blogs']);
Route::get('/get-shipping-options', [CheckoutController::class,'get_shipping_details']);


Route::get('ship',[HomeController::class,'ship']);

Route::post('/calculate-tax', [CheckoutController::class,'calculateTax']);
Route::post('/save-review', [HomeController::class,'save_review']);

Route::post('return-product', [App\Http\Controllers\OrderController::class, 'returnProduct']);

Route::get('/enquiry-form', function (){
    return view('web.enquiry');
});
Route::post('/send-enquiry', [HomeController::class,'send_enquiry']);

Route::get('/privacy-policy', function (){
    return view('web.privacy-policy');
});
Route::get('/return-policy', function (){
    return view('web.return-policy');
});
Route::get('/pricing-information', function (){
    return view('web.pricing-ordering-information');
});

Route::get('/order-status', function (){
    return view('web.order-status');
});


Route::get('/home',function (){
    if(Auth::check()){
        if(Auth::user()->role == '1'){
            return redirect('admin/dashboard');
        }
    }
    return abort(403,'You\'re on wrong page');
});

Route::get('/fetch-colors', [\App\Http\Controllers\CarColorController::class,'fetchColors'])->name('fetch.colors');
Route::get('/fetch-variations', [\App\Http\Controllers\CarColorController::class,'fetchVariations'])->name('fetch.variations');
Route::get('/fetch-variations-details', [\App\Http\Controllers\CarColorController::class,'fetchVariationDetails'])->name('fetch.variation.details');


Route::get('/fetch-bike-colors', [\App\Http\Controllers\BikeColorController::class,'fetchBikeColors'])->name('fetch.bikecolors');
Route::get('/fetch-bike-variations', [\App\Http\Controllers\BikeColorController::class,'fetchBikeVariations'])->name('fetch.bikevariations');
Route::get('/fetch-bike-variations-details', [\App\Http\Controllers\BikeColorController::class,'fetchBikeVariationDetails'])->name('fetch.bikevariation.details');

//Route::get('/fetch-variation-details', 'CarColorController@fetchVariationDetails')->name('fetch.variation.details');

Route::group(['prefix'=>'admin'], function(){
    Route::get('/home',function (){
        if(Auth::check()){
            if(Auth::user()->role == '1'){
                return redirect('admin/dashboard');
            }
        }
        return abort(403,'You\'re on wrong page');
    });

    Auth::routes();
    Route::post('/login', [App\Http\Controllers\Auth\LoginController::class, 'login']);
    Route::post('/logout', [App\Http\Controllers\Auth\LoginController::class, 'logout'])->name('logout');

    Route::get('/', [App\Http\Controllers\AdminController::class, 'index']);
    Route::get('/dashboard', [App\Http\Controllers\AdminController::class, 'dashboard'])->name('admin.dashboard');
    Route::get('/my-profile', [App\Http\Controllers\AdminController::class, 'my_profile'])->name('admin.myprofile');
    Route::post('/update-profile', [App\Http\Controllers\AdminController::class, 'update_profile'])->name('admin.update_profile');


    Route::get('/all-banner', [App\Http\Controllers\BannerController::class, 'index']);
    Route::get('/add-banner', [App\Http\Controllers\BannerController::class, 'add']);
    Route::post('/save-banner', [App\Http\Controllers\BannerController::class, 'save']);
    Route::get('/update-banner-Status', [App\Http\Controllers\BannerController::class, 'status']);
    Route::get('/delete-banner/{id}', [App\Http\Controllers\BannerController::class, 'destroy']);
    Route::get('/edit-banner/{id}', [App\Http\Controllers\BannerController::class, 'edit']);
    Route::post('/update-banner/', [App\Http\Controllers\BannerController::class, 'update']);


    // Cars Manufacture
    Route::get('/all-cars', [App\Http\Controllers\CarManufacturer::class, 'index']);
    Route::get('/add-cars', [App\Http\Controllers\CarManufacturer::class, 'add']);
    Route::post('/save-cars', [App\Http\Controllers\CarManufacturer::class, 'save']);
    Route::get('/update-cars-Status', [App\Http\Controllers\CarManufacturer::class, 'status']);
    Route::get('/delete-cars/{id}', [App\Http\Controllers\CarManufacturer::class, 'destroy']);
    Route::get('/edit-cars/{id}', [App\Http\Controllers\CarManufacturer::class, 'edit']);
    Route::post('/update-cars/', [App\Http\Controllers\CarManufacturer::class, 'update']);

    // Cars Colors
    Route::get('/all-cars-color', [App\Http\Controllers\CarColorController::class, 'index']);
    Route::get('/add-cars-color', [App\Http\Controllers\CarColorController::class, 'add']);
    Route::post('/save-cars-color', [App\Http\Controllers\CarColorController::class, 'save']);
    Route::get('/update-cars-color-Status', [App\Http\Controllers\CarColorController::class, 'status']);
    Route::get('/delete-cars-color/{id}', [App\Http\Controllers\CarColorController::class, 'destroy']);
    Route::get('/edit-cars-color/{id}', [App\Http\Controllers\CarColorController::class, 'edit']);
    Route::post('/update-cars-color/', [App\Http\Controllers\CarColorController::class, 'update']);

    // Cars Variations
    Route::get('/all-cars-variations', [App\Http\Controllers\CarVariationController::class, 'index']);
    Route::get('/add-cars-variations', [App\Http\Controllers\CarVariationController::class, 'add']);
    Route::post('/save-cars-variations', [App\Http\Controllers\CarVariationController::class, 'save']);
    Route::get('/update-cars-variations-Status', [App\Http\Controllers\CarVariationController::class, 'status']);
    Route::get('/delete-cars-variations/{id}', [App\Http\Controllers\CarVariationController::class, 'destroy']);
    Route::get('/edit-cars-variations/{id}', [App\Http\Controllers\CarVariationController::class, 'edit']);
    Route::post('/update-cars-variations/', [App\Http\Controllers\CarVariationController::class, 'update']);


    // Cars Manufacture
    Route::get('/all-bikes', [App\Http\Controllers\BikeManufacturer::class, 'index']);
    Route::get('/add-bikes', [App\Http\Controllers\BikeManufacturer::class, 'add']);
    Route::post('/save-bikes', [App\Http\Controllers\BikeManufacturer::class, 'save']);
    Route::get('/update-bikes-Status', [App\Http\Controllers\BikeManufacturer::class, 'status']);
    Route::get('/delete-bikes/{id}', [App\Http\Controllers\BikeManufacturer::class, 'destroy']);
    Route::get('/edit-bikes/{id}', [App\Http\Controllers\BikeManufacturer::class, 'edit']);
    Route::post('/update-bikes/', [App\Http\Controllers\BikeManufacturer::class, 'update']);

    // Cars Colors
    Route::get('/all-bikes-color', [App\Http\Controllers\BikeColorController::class, 'index']);
    Route::get('/add-bikes-color', [App\Http\Controllers\BikeColorController::class, 'add']);
    Route::post('/save-bikes-color', [App\Http\Controllers\BikeColorController::class, 'save']);
    Route::get('/update-bikes-color-Status', [App\Http\Controllers\BikeColorController::class, 'status']);
    Route::get('/delete-bikes-color/{id}', [App\Http\Controllers\BikeColorController::class, 'destroy']);
    Route::get('/edit-bikes-color/{id}', [App\Http\Controllers\BikeColorController::class, 'edit']);
    Route::post('/update-bikes-color/', [App\Http\Controllers\BikeColorController::class, 'update']);

    // Cars Variations
    Route::get('/all-bikes-variations', [App\Http\Controllers\BikeVariationController::class, 'index']);
    Route::get('/add-bikes-variations', [App\Http\Controllers\BikeVariationController::class, 'add']);
    Route::post('/save-bikes-variations', [App\Http\Controllers\BikeVariationController::class, 'save']);
    Route::get('/update-bikes-variations-Status', [App\Http\Controllers\BikeVariationController::class, 'status']);
    Route::get('/delete-bikes-variations/{id}', [App\Http\Controllers\BikeVariationController::class, 'destroy']);
    Route::get('/edit-bikes-variations/{id}', [App\Http\Controllers\BikeVariationController::class, 'edit']);
    Route::post('/update-bikes-variations/', [App\Http\Controllers\BikeVariationController::class, 'update']);



    Route::get('categories',[CategoryController::class,'index']);
    Route::post('create-category',[CategoryController::class,'create'])->name('create.category');
    Route::get('change-status',[CategoryController::class,'change_status'])->name('change.status.category');
    Route::get('delete/category/{id}',[CategoryController::class,'destroy'])->name('delete.category');
    Route::get('edit-category/{id}',[CategoryController::class,'edit'])->name('edit.category');
    Route::post('update-category',[CategoryController::class,'update'])->name('update.category');
    Route::post('uploadCategoryContent',[CategoryController::class,'uploadCategoryContent'])->name('uploadContent');

    Route::get('subcategories',[SubcategoryController::class,'index']);
    Route::post('create-subcategories',[SubcategoryController::class,'create'])->name('create.category');
    Route::get('change-status-subcategory',[SubcategoryController::class,'change_status'])->name('change.status.category');
    Route::get('delete/subcategories/{id}',[SubcategoryController::class,'destroy'])->name('delete.category');
    Route::get('edit-subcategories/{id}',[SubcategoryController::class,'edit'])->name('edit.category');
    Route::post('update-subcategories',[SubcategoryController::class,'update'])->name('update.category');
    Route::post('uploadSubCategoryContent',[SubcategoryController::class,'uploadSubCategoryContent'])->name('uploadSubCategoryContent');

    Route::get('post-format',[BlogController::class,'index']);
    Route::get('add-posts',[BlogController::class,'create']);
    Route::post('create-post',[BlogController::class,'store']);
    Route::post('update-post',[BlogController::class,'update']);
    Route::get('all-post',[BlogController::class,'all_posts']);
    Route::get('edit-blog/{id}',[BlogController::class,'edit']);

    Route::get('ad-spaces',[AdController::class,'index']);
    Route::post('update-ads',[AdController::class,'update']);

    Route::get('delete/blog/{id}',[BlogController::class,'destroy']);

    Route::get('common-settings',[CommonController::class,'common_settings']);
    Route::post('update-common',[CommonController::class,'update_common']);

    // common-settings

    Route::get('/our-team', [App\Http\Controllers\TeamController::class, 'index']);
    Route::get('/add-teams', [App\Http\Controllers\TeamController::class, 'add']);
    Route::post('/save-team', [App\Http\Controllers\TeamController::class, 'save']);
    Route::get('/update-teams-Status', [App\Http\Controllers\TeamController::class, 'status']);
    Route::get('/delete-teams/{id}', [App\Http\Controllers\TeamController::class, 'destroy']);
    Route::get('/edit-teams/{id}', [App\Http\Controllers\TeamController::class, 'edit']);
    Route::post('/update-team/', [App\Http\Controllers\TeamController::class, 'update']);


    Route::get('/our-role', [App\Http\Controllers\RoleController::class, 'index']);
    Route::get('/add-role', [App\Http\Controllers\RoleController::class, 'add']);
    Route::post('/save-role', [App\Http\Controllers\RoleController::class, 'save']);
    Route::get('/update-role-Status', [App\Http\Controllers\RoleController::class, 'status']);
    Route::get('/delete-role/{id}', [App\Http\Controllers\RoleController::class, 'destroy']);
    Route::get('/edit-role/{id}', [App\Http\Controllers\RoleController::class, 'edit']);
    Route::post('/update-role/', [App\Http\Controllers\RoleController::class, 'update']);



    Route::get('/all-services', [App\Http\Controllers\ServiceController::class, 'index']);
    Route::get('/add-services', [App\Http\Controllers\ServiceController::class, 'add']);
    Route::post('/save-services', [App\Http\Controllers\ServiceController::class, 'save']);
    Route::get('/update-services-Status', [App\Http\Controllers\ServiceController::class, 'status']);
    Route::get('/delete-services/{id}', [App\Http\Controllers\ServiceController::class, 'destroy']);
    Route::get('/edit-service/{id}', [App\Http\Controllers\ServiceController::class, 'edit']);
    Route::post('/update-services', [App\Http\Controllers\ServiceController::class, 'update']);
    Route::get('change-status-services',[App\Http\Controllers\ServiceController::class,'change_status']);
    Route::get('change-status-services-show_on_homet',[App\Http\Controllers\ServiceController::class,'show_on_homet_status']);

    Route::get('/founders-note', [App\Http\Controllers\TeamController::class, 'founders_note']);
    Route::post('/update-founder-note', [App\Http\Controllers\TeamController::class, 'updatefoundernote']);



    Route::get('/all-collaborations', [App\Http\Controllers\CollaborationController::class, 'index']);
    Route::get('/add-collaborations', [App\Http\Controllers\CollaborationController::class, 'add']);
    Route::post('/save-collaborations', [App\Http\Controllers\CollaborationController::class, 'save']);
    Route::get('/update-collaborations-Status', [App\Http\Controllers\CollaborationController::class, 'status']);
    Route::get('/delete-collaborations/{id}', [App\Http\Controllers\CollaborationController::class, 'destroy']);
    Route::get('/edit-collaborations/{id}', [App\Http\Controllers\CollaborationController::class, 'edit']);
    Route::post('/update-collaborations/', [App\Http\Controllers\CollaborationController::class, 'update']);
    Route::get('change-collaborations-status',[App\Http\Controllers\CollaborationController::class,'change_status']);
    Route::get('change-collaborations-show_on_homet',[App\Http\Controllers\CollaborationController::class,'show_on_homet_status']);

    Route::get('/all-annual-reports', [App\Http\Controllers\AnnualReportController::class, 'index']);
    Route::get('/add-annual-reports', [App\Http\Controllers\AnnualReportController::class, 'add']);
    Route::post('/save-annual-reports', [App\Http\Controllers\AnnualReportController::class, 'save']);
    Route::get('/update-annual-reports-Status', [App\Http\Controllers\AnnualReportController::class, 'status']);
    Route::get('/delete-annual-reports/{id}', [App\Http\Controllers\AnnualReportController::class, 'destroy']);
    Route::get('/edit-annual-reports/{id}', [App\Http\Controllers\AnnualReportController::class, 'edit']);
    Route::post('/update-annual-reports/', [App\Http\Controllers\AnnualReportController::class, 'update']);
    Route::get('change-annual-reports-status',[App\Http\Controllers\AnnualReportController::class,'change_status']);
    Route::get('change-annual-reports-show_on_homet',[App\Http\Controllers\AnnualReportController::class,'show_on_homet_status']);


    Route::get('/who-we-are', [App\Http\Controllers\AboutController::class, 'who_we_are']);
    Route::post('update-aboutus',[App\Http\Controllers\AboutController::class,'updatewhoweare']);

    Route::get('/our-mission', [App\Http\Controllers\AboutController::class, 'our_mission']);
    Route::post('/update-our-mission', [App\Http\Controllers\AboutController::class, 'updateour_mission']);

    Route::get('/core-compentancy', [App\Http\Controllers\AboutController::class, 'core_compentancy']);
    Route::post('/update-core-compentancy', [App\Http\Controllers\AboutController::class, 'update_core_compentancy']);

    Route::get('/offers-{url}', [App\Http\Controllers\Sustainability::class, 'overview']);
    Route::post('/update-offers-{url}', [App\Http\Controllers\Sustainability::class, 'update_overview']);

    Route::get('/social-impacts', [App\Http\Controllers\SocialImpact::class, 'overview']);
    Route::post('/update-social-impacts', [App\Http\Controllers\SocialImpact::class, 'update_overview']);

//    Route::get('/offers-approach', [App\Http\Controllers\Sustainability::class, 'approach']);
//    Route::post('/update-offers-approach', [App\Http\Controllers\Sustainability::class, 'update_approach']);
//
//    Route::get('/offers-stewardship', [App\Http\Controllers\Sustainability::class, 'stewardship']);
//    Route::post('/update-offers-stewardship', [App\Http\Controllers\Sustainability::class, 'update_stewardship']);


    Route::get('offers', [OfferController::class, 'index'])->name('offers.index');
    Route::post('offers/create', [OfferController::class, 'store'])->name('offers.create');
    Route::get('edit-offer/{id}', [OfferController::class, 'edit'])->name('offers.edit');
    Route::post('update-offer', [OfferController::class, 'update'])->name('offers.update');
    Route::delete('offers/{id}', [OfferController::class, 'destroy'])->name('offers.destroy');
    Route::get('change-offer-status',[App\Http\Controllers\OfferController::class,'change_status']);
       Route::get('/delete/offer/{id}', [App\Http\Controllers\OfferController::class, 'destroy']);


//    Products Attributes
    Route::get('products/all-attributes', [App\Http\Controllers\AttributesController::class,'index']);
    Route::get('products/add-attributes', [App\Http\Controllers\AttributesController::class,'create']);
    Route::post('products/save-attributes', [App\Http\Controllers\AttributesController::class,'store']);
    Route::get('products/edit-attributes/{id}', [App\Http\Controllers\AttributesController::class,'edit']);
    Route::post('products/update-attributes/{id}', [App\Http\Controllers\AttributesController::class,'update']);
    Route::get('products/update-attributes-Status', [App\Http\Controllers\AttributesController::class,'changeAttributesstatus']);
    Route::get('products/delete-attributes/{id}', [App\Http\Controllers\AttributesController::class,'destroy']);
    Route::get('products/delete-attributes-values/{id}', [App\Http\Controllers\AttributesController::class,'destroyAttrValue']);

    Route::get('products/attributes/options/{id}', [App\Http\Controllers\AttributesController::class,'viewOptionsValues']);
    Route::get('products/add-attributes-values', [App\Http\Controllers\AttributesController::class,'addOptionsValues']);
    Route::post('products/attributes/save-attributes-values/{id}', [App\Http\Controllers\AttributesController::class,'saveAttributesValues']);
    Route::get('products/attributes/edit-attribute-value/{id}', [App\Http\Controllers\AttributesController::class,'editAttributesValues']);
    Route::post('products/attributes/update-attributes-values/{id}', [App\Http\Controllers\AttributesController::class,'updateAttributesValues']);

// Products Units
    Route::get('products/all-units', [App\Http\Controllers\UnitsController::class,'index']);
    Route::get('products/add-units', [App\Http\Controllers\UnitsController::class,'create']);
    Route::post('products/save-units', [App\Http\Controllers\UnitsController::class,'store']);
    Route::get('products/edit-units/{id}', [App\Http\Controllers\UnitsController::class,'edit']);
    Route::post('products/update-units/{id}', [App\Http\Controllers\UnitsController::class,'update']);
    Route::get('products/update-units-Status', [App\Http\Controllers\UnitsController::class,'changeuUnitstatus']);
    Route::get('products/delete-units/{id}', [App\Http\Controllers\UnitsController::class,'destroy']);

    // Products # ADD, UPDATE ,DELETE...
    Route::get('/all-products', [App\Http\Controllers\ProductsController::class,'index']);
    Route::get('/add-products', [App\Http\Controllers\ProductsController::class,'create']);
    Route::post('/save-products', [App\Http\Controllers\ProductsController::class,'storee']);
    Route::get('/edit-products/{id}', [App\Http\Controllers\ProductsController::class,'edit']);
    Route::post('/update-products/{id}', [App\Http\Controllers\ProductsController::class,'update']);
    Route::get('/delete-products/{id}', [App\Http\Controllers\ProductsController::class,'destroy']);
    Route::get('/update-products-Status', [App\Http\Controllers\ProductsController::class,'status']);

    Route::get('/all-orders', [App\Http\Controllers\OrderController::class,'index']);
    Route::get('/view-orders/{id}', [App\Http\Controllers\OrderController::class,'view_order']);

    Route::get('/fetch-order-data', [App\Http\Controllers\AdminController::class,'salesReport'])->name('fetch-order-data');
    Route::get('/sales-report', [App\Http\Controllers\AdminController::class,'salesReport'])->name('sales.report');

 // Products # ADD, UPDATE ,DELETE...
    Route::get('/all-users', [App\Http\Controllers\UserController::class,'all_user']);

    Route::get('/return-refunds', [App\Http\Controllers\OrderController::class,'return_refunds']);
    Route::get('/view-return-orders/{id}', [App\Http\Controllers\OrderController::class,'view_return_order']);

    Route::get('refund-status',[App\Http\Controllers\OrderController::class,'refund_status']);
    Route::get('enquiry',[App\Http\Controllers\AdminController::class,'all_enquiry']);

//    Route::get('/sales-report', 'ReportController@salesReport')->name('sales.report');

});
