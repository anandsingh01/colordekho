<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    use HasFactory;

    //each category might have multiple children
    public function childrenCat() {
        return $this->hasMany('\App\Models\Category', 'section_id')
            ->where('parent_id' ,'==' ,0);
    }

    // For frontend
    public function getCategories() {
        return $this->hasMany('\App\Models\Category', 'section_id')
            ->where('parent_id' ,'==' ,0);
    }

    public function getCategoriesWithSubCategories() {
        return $this->hasMany('\App\Models\Category', 'parent_id')
            ->where('parent_id' ,'!=' ,0);
    }

    public function childrensubCat() {
        return $this->hasMany('\App\Models\Category', 'section_id')
            ->where('parent_id' ,'!=' ,0);
    }


//    function products(){
//        return $this->hasMany('Product','section_id');
//    }

}
