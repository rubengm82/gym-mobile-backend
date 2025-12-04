<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clase extends Model
{
    use HasFactory;

    protected $table = 'Clases';

    protected $primaryKey = 'id_clase';

    protected $fillable = [
        'nombre',
        'aforo',
        'descripcion',
        'estado',
    ];

    // Relación con Planificaciones
    public function planificaciones()
    {
        return $this->hasMany(Planificacion::class, 'fk_id_clase', 'id_clase');
    }
}