<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected  $table='products';

    public function section()
    {
        return $this->belongsTo(Category::class, 'section_id', 'id')
            ->where('category_type', 'product');
    }

    function category(){
        return $this->belongsTo('\App\Models\Category','parent_id')->where('category_type','brands');;
    }

    function subcategory(){
        return $this->belongsTo('\App\Models\Category','subparent_id');
    }

    function get_brands(){
        return $this->belongsTo('\App\Models\Category','brands_id')->where('category_type','brands');
    }

    function getProductAttr(){
        return $this->hasMany('\App\Models\ProductAttribut','product_id');
    }

    function getProductAttrVal(){
        return $this->hasOne('\App\Models\AttributeValue','id');
    }

    function getAllsizes(){
        return $this->hasMany('\App\Models\Product_size','product_id');
    }

    function getUser(){
        return $this->belongsTo('\App\Models\User','added_by');
    }

    function getPrices(){
        return $this->hasMany('\App\Models\Product_size','product_id');
    }

    function getGallery(){
        return $this->hasMany('\App\Models\Gallery','product_id');
    }

//    function getShopDetails(){
//        return $this->hasOne('\App\Models\Shop','added');
//    }

    public function orders()
    {
        return $this->belongsToMany(Order::class);
    }

//    public function sizeAttributes()
//    {
//        return $this->belongsToMany(Product_size::class)
//            ->withPivot('image', 'size'); // Assuming these columns exist in the pivot table
//    }
    public function sizeAttributes()
    {
        return $this->hasMany(Product_size::class);
    }

    public function orderss()
    {
        return $this->belongsToMany(Order::class, 'order_product')->withPivot('order_product');
    }

}
