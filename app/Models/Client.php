<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom_client',
        'email_client',
        'contact_client',
    ];

    public function projet() {
        return $this->hasMany(Projet::class);
    }
}
