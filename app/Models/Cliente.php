<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Cliente extends Authenticatable
{
    use HasFactory, Notifiable;

    protected $table = 'Clientes';

    protected $email = 'mail'; // Especificar que el campo de email es 'mail'

    protected $fillable = [
        'id_cliente',
        'nombre',
        'apellido1',
        'apellido2',
        'IBAN',
        'mail',
        'telefono',
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
