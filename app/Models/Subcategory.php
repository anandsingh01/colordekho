<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use \App\Models\Category;
class Subcategory extends Model
{
    use HasFactory;
    //each category might have one parent
    public function get_parent_category() {
        return $this->belongsToOne(static::class, 'parent_id');
    }
}
