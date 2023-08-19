<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    use HasFactory;

    protected $table = 'order_product';


// OrderProduct.php

    public function carColor()
    {
        return $this->belongsTo(CarColorModel::class, 'color_id', 'car_id');
    }

    public function bikeColor()
    {
        return $this->belongsTo(BikeColorModel::class, 'color_id', 'bike_id');
    }



    public function carVariation()
    {
        return $this->belongsTo(CarVariationsModel::class, 'attribute_id');
    }

    public function bikeVariation()
    {
        return $this->belongsTo(BikeVariationsModel::class, 'attribute_id');
    }


}
