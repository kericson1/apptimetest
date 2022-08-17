<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Projet_validation extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_projetvalidation ';
    protected $fillable = [
        'fichier_validation',
    ];

}
