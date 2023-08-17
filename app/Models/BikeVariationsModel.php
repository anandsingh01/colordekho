<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BikeVariationsModel extends Model
{
    use HasFactory;

    protected $table = 'bikevariation';

    function get_colors(){
        return $this->hasMany('\App\Models\BikeColorModel','id','color_id');
    }
}
