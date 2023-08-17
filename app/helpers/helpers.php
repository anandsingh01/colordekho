<?php

use App\Models\BannerModel;
use App\Models\Cart;
use App\Models\Product;
use Carbon\Carbon;

function getCommonSetting(){
    $commonSetting = \App\Models\CommonModel::first();
    return $commonSetting;
}

function get_hero_banner(){
    $data = \App\Models\BannerModel::where('display_area','1')->where('status','1')->get();
    return $data;
}

function get_cart(){
    $count = \App\Models\Cart::where('user_id',Auth::id())
        ->where('ip_address',$_SERVER['REMOTE_ADDR'])
        ->count();
    $getCartTotal = \App\Models\Cart::where('ip_address',$_SERVER['REMOTE_ADDR'])
        ->sum('subtotal');
    return json_encode(array('count' => $count, 'cartTotal' => $getCartTotal));
}

function getCartProducts(){
    $getAllCart = \App\Models\Cart::where('ip_address',$_SERVER['REMOTE_ADDR'])
        ->with([
            'getProducts',
        ])
        ->get();
    return $getAllCart;
}

function getRelatedProducts($id){
    $data['product'] = \App\Models\Product::where('brands_id',$id)
        ->with(
            'getPrices',
            'getGallery',
            'get_brands',
            'section'
        )
        ->first();
    return $data;
}

function get_category(){
    $data = \App\Models\Category::where('category_type','product')->where('status','1')->get();
    return $data;
}
function get_brands(){
    $data = \App\Models\Category::where('category_type','brands')->where('status','1')->get();
    return $data;
}



?>
