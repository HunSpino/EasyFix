<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hibajelent extends Model
{
    use HasFactory;

    public function gepek(){
        return $this->belongsTo(Gepek::class);
    }
    public function allapot(){
        return $this->belongsTo(Allapot::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
    protected $fillable = ['hiba','user_id','gepek_id','allapot_id'];

    protected $visible = ['hiba','user_id','gepek_id','allapot_id'];
}
