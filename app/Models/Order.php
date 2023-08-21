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
        return $this->hasMany(OrderProduct::class, 'order_id');
    }

    public function order_product()
    {
        return $this->hasMany(OrderProduct::class, 'order_id');
    }

}
