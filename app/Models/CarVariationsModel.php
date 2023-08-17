<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CarVariationsModel extends Model
{
    use HasFactory;

    function get_colors(){
        return $this->hasMany('\App\Models\CarColorModel','id','color_id');
    }
}
