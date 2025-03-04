<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClassModel extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'classes';

    public function elig(){

        return $this->hasMany(Elibrary::class,'category_id');
    }
}
