<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id', 'ip_address', 'user_id', 'first_name', 'last_name', 'country', 'address_1', 'address_2', 'city',
        'state', 'pincode', 'phone', 'email', 'final_amount', 'coupon_code','status' ,'sales_tax','shipping_price'
    ];

    public function products()
    {
        return $this->belongsToMany(Product::class);
    }

    function get_order_products(){
        return $this->belongsToMany(Product::class, 'order_product')
            ->withPivot('quantity', 'price','attribute_id','size');
    }

    public function productss()
    {
        return $this->belongsToMany(Product::class, 'order_product')->withPivot('quantity');
    }

    function buyer_details(){
        return $this->belongsTo('\App\Models\User','user_id','id');
    }

    function get_refund_data(){
        return $this->belongsTo('\App\Models\ProductReturn','order_id','order_id');
    }
}
