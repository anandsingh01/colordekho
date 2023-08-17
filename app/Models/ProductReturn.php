<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductReturn extends Model
{
    use HasFactory;

    protected $table = 'product_returns';

    function return_refunds(){
        return $this->hasOne('\App\Models\Order','order_id','order_id');
    }

    function buyer_details(){
        return $this->belongsTo('\App\Models\User','user_id','id');
    }
}
