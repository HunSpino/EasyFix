<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gepek extends Model
{
    use HasFactory;

    protected $fillable = ['epulet','emelet','terem','gep'];

    protected $visible = ['epulet','emelet','terem','gep'];
}
