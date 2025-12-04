<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    use HasFactory;

    protected $table = 'Reservas';

    protected $primaryKey = 'id_reserva';

    protected $fillable = [
        'fk_id_planificacion',
        'fk_id_cliente',
        'fecha_reserva',
        'estado',
    ];

    // Relación con Planificacion
    public function planificacion()
    {
        return $this->belongsTo(Planificacion::class, 'fk_id_planificacion', 'id_planificacion');
    }

    // Relación con Cliente
    public function cliente()
    {
        return $this->belongsTo(Cliente::class, 'fk_id_cliente', 'id_cliente');
    }
}