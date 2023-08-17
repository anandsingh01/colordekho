<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectDetail extends Model
{
    use HasFactory;

    protected $table = 'project_details';

    function getProjectParent(){
        return $this->hasOne('\App\Models\ProjectModel','id','project_id');
    }
}
