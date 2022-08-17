<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PasswordSecuritie extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';

    protected $fillable = [
        'password_expiry_days',
        'password_updated_at',
    ];

    public function password(){
        return $this->belongsTo(User::class);
    }
}
