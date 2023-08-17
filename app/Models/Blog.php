<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;
    protected $table = 'posts';

    function getCategory(){
        return $this->belongsTo(\App\Models\Category::class,'category_id');
    }

    function getUsers(){
        return $this->belongsTo(\App\Models\User::class,'id');
    }
    public function getTags(){
        return $this->hasMany('\App\Models\Tag','post_id','id')->orderBy('id','DESC');
    }
}
