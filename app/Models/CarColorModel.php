<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CarColorModel extends Model
{
    use HasFactory;

    function get_cars(){
        return $this->hasMany('\App\Models\CarManufacturerModel','id','car_id');
    }
}
