<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tache extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_tache';
    protected $dates = ['date_debut_tache','date_fin_tache'];
    protected $fillable = [
        'nom_tache',
        'heure_total_tache',
        'progression',
    ];
    public function project(){
        return $this->belongsTo(Projet::class,'id_projet');
    }

    public function utilisateurs(){
        return $this->belongsToMany(User::class,'tache_user','id_tache','user_id');
    }
}
