<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Projet extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_projet';
    protected $dates = ['date_debut','date_fin'];
    protected $fillable = [
        'nom_projet',
        'heure_total',
        'description',
    ];
    protected $hidden = ['pivot'];

    public function sponsors(){
        return $this->belongsTo(Sponsor::class,'id_sponsor');
    }

    public function clients(){
        return $this->belongsTo(Client::class,'id_client');
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function users() {
        return $this->belongsToMany(User::class,'projet_user', 'id_projet','user_id');
    }

    public function tache(){
        return $this->hasMany(Tache::class,'id_tache');
    }

    public function validate(){
        return $this->hasMany(Projet_validation::class,'id_projetvalidation');
    }
}
