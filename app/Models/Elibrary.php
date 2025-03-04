<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Elibrary extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'elibrary';

    public function class(){

        return $this->belongsTo(ClassModel::class,'category_id');
    }
}
