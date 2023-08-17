<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductAttribut extends Model
{
    use HasFactory;
    protected $table = 'product_attributes';

    function getAttrVal(){
        return $this->hasOne('');
    }
}
