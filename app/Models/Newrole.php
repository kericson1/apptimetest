<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Newrole extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_role';

    protected $fillable = [
        'nom_role',
    ];

    public function fonctionnalites() {
        return $this->belongsToMany(Fonctionnalite::class,'fonctionnalite_newrole', 'id_fonc','id_role');
    }

}
