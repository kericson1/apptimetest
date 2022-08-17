<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Log extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_log';
    protected $dates = ['date_log'];
    protected $fillable = [
        'type',
        'action',
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
