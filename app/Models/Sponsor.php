<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sponsor extends Model
{
    use HasFactory;


    protected $primaryKey = 'id_sponsor';
    protected $fillable = [
        'type_sponsor', 'user_id'
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'id');
    }

    public function projet() {
        return $this->hasMany(Projet::class);
    }
}
