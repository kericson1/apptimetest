<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_service';
    protected $fillable = [
        'nom_service',
    ];

    public function utilisateur() {
        return $this->belongsToMany(User::class,'service_user', 'user_id','id_service');
    }

    public function manager() {
        return $this->belongsToMany(Respo::class,'respo_service', 'id_service','id_respo');
    }
}
