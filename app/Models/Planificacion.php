<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Planificacion extends Model
{
    use HasFactory;

    protected $table = 'Planificaciones';

    protected $primaryKey = 'id_planificacion';

    protected $fillable = [
        'dia',
        'hora_inicio',
        'hora_fin',
        'fk_id_clase',
        'fk_id_inst',
        'estado',
    ];

    // Relación con Clase
    public function clase()
    {
        return $this->belongsTo(Clase::class, 'fk_id_clase', 'id_clase');
    }

    // Relación con Instructor
    public function instructor()
    {
        return $this->belongsTo(Instructor::class, 'fk_id_inst', 'id_inst');
    }

    // Relación con Reservas
    public function reservas()
    {
        return $this->hasMany(Reserva::class, 'fk_id_planificacion', 'id_planificacion');
    }
}