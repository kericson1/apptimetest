<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fonctionnalite extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_fonc';

    protected $fillable = [
        'nomfonc',
        'tokfonc',
    ];

    public function newroles() {
        return $this->belongsToMany(Newrole::class,'fonctionnalite_newrole', 'id_fonc','id_role');
    }

    public function utilisateurs() {
        return $this->belongsToMany(User::class,'fonctionnalite_user', 'id_fonc','user_id');
    }
}
