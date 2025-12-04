<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Administrador extends Authenticatable
{
    use HasFactory, Notifiable;

    protected $table = 'Administradores';

    protected $primaryKey = 'id_user';

    protected $email = 'mail'; // Especificar que el campo de email es 'mail'

    protected $fillable = [
        'id_user',
        'mail',
        'rol',
        'password',
        'estado',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected function casts(): array
    {
        return [
            'password' => 'hashed',
        ];
    }
}
