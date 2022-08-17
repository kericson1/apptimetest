<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Equipement extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_equipement';
    protected $dates = ['de','a','annee'];
    protected $fillable = [
        'type',
        'logiciel',
        'equipement',
        'modele',
        'marque',
        'numero_mac',
        'cpu',
        'gpu',
        'clavier',
        'disque',
        'capacite',
    ];
}
