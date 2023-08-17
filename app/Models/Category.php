<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    //each category might have one parent
    public function get_parent_category() {
        return $this->hasOne(static::class, 'parent_id');
    }
}
