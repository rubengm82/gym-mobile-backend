<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Instructor extends Model
{
    use HasFactory;

    protected $table = 'Instructores';

    protected $primaryKey = 'id_inst';

    protected $fillable = [
        'nombre',
        'apellido1',
        'apellido2',
        'telefono',
        'DNI',
        'estado',
    ];

    // Relación con Planificaciones
    public function planificaciones()
    {
        return $this->hasMany(Planificacion::class, 'fk_id_inst', 'id_inst');
    }
}