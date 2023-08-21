<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    public  function getProducts(){
        return $this->belongsTo('App\Models\Product','product_id');
    }

    public function getBrands(){
        return $this->belongsTo('App\Models\Category','brands_id')
            ->where('category_type','brands');
    }

    public function getSection(){
        return $this->belongsTo('App\Models\Category','section_id');
    }

    function getSize(){
        return $this->belongsTo('App\Models\Product_size','id');
    }



    function getVendorDetails(){
        return $this->belongsTo('App\Models\User','product_added_by');
    }

//    function getCommissionDetails(){
//        return $this->belongsTo('App\Models\ComissionModel','category_id');
//    }


    public function car_color()
    {
        return $this->belongsTo(CarColorModel::class, 'color_id');
    }

    public function car_manufacturer()
    {
        return $this->belongsTo(CarManufacturerModel::class, 'car_id');
    }

    public function car_variation()
    {
        return $this->belongsTo(CarVariationsModel::class, 'variation');
    }


    public function bike_color()
    {
        return $this->belongsTo(BikeColorModel::class, 'color_id');
    }

    public function bike_variation()
    {
        return $this->belongsTo(BikeVariationsModel::class, 'variation');
    }

    public function bike_manufacturer()
    {
        return $this->belongsTo(BikeManufacturerModel::class, 'bike_id');
    }
    public function products()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }


}
