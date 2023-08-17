<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attribute extends Model
{
    use HasFactory;
    public function getAttrVal() { // Get all values of attribute
        return $this->hasMany('App\Models\AttributeValue','attribute_option');
    }

    public function getCategoryDetails(){
//        Relation work : Category , where Attribute Table has category_id
        return $this->belongsTo('App\Models\Category','category_id')->where('parent_id','==',0);
    }

    public function getSectionDetails(){
        return $this->belongsTo('App\Models\Section','section_id');
    }
}
