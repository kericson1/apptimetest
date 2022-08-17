<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Timesheet extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_timesheet';
    protected $dates = ['date_timesheet'];
    protected $fillable = [
        'statut',
        'heure_timesheet',
        'validation_timesheet',
    ];

    public function sprojet(){
        return $this->belongsTo(Projet::class,'id_projet');
    }

    public function respons(){
        return $this->belongsTo(Respo::class,'id_respo');
    }

    public function task(){
        return $this->belongsTo(Tache::class,'id_tache');
    }

    public function utilis(){
        return $this->belongsTo(User::class,'id');
    }
}
