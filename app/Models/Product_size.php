<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_size extends Model
{
    use HasFactory;
    protected $table = 'product_size_attributes';

    function getProduct(){
        return $this->hasOne('App\Models\Product','product_id');
    }
}
