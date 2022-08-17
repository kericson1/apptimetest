<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Conge extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_conge';

    public function utilisation(){
        return $this->belongsTo(User::class);
    }

//    public function respo(){
//        return $this->belongsTo(Respo::class);
//    }
}

