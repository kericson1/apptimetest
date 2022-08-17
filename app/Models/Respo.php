<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Respo extends Model
{
    use HasFactory;

    public function responsabilite(){
        return $this->belongsTo(User::class);
    }

    public function center() {
        return $this->belongsToMany(Service::class,'respo_service', 'id_service','id_respo');
    }
}
