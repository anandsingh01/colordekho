<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BikeColorModel extends Model
{
    use HasFactory;

    function get_bikes(){
        return $this->hasMany('\App\Models\BikeManufacturerModel','id','bike_id');
    }
}
