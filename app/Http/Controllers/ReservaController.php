<?php

namespace App\Http\Controllers;

use App\Models\Reserva;
use Illuminate\Http\Request;

class ReservaController extends Controller
{
    /**
     * Listar todas las reservas
     */
    public function index()
    {
        $reservas = Reserva::with(['planificacion.clase', 'planificacion.instructor', 'cliente'])->get();
        return response()->json($reservas);
    }

    /**
     * Crear una nueva reserva
     */
public function store(Request $request)
{
    $validated = $request->validate([
        'fk_id_planificacion' => 'required|exists:Planificaciones,id',
        'fk_id_cliente' => 'required|exists:Clientes,id',
        'fecha_reserva' => 'required|date',
        'estado' => 'required|string|max:50',
    ]);

    
    $existeReserva = Reserva::where('fk_id_planificacion', $validated['fk_id_planificacion'])
        ->where('fk_id_cliente', $validated['fk_id_cliente'])
        ->exists();

    if ($existeReserva) {
        return response()->json([
            'message' => 'Ya tienes una reserva para esta clase'
        ], 409); // 409 Conflict
    }

    $reserva = Reserva::create($validated);

    return response()->json([
        'message' => 'Reserva creada correctamente',
        'data' => $reserva
    ], 201);
}




    /**
     * Mostrar una reserva específica
     */
    public function show($id)
    {
        $reserva = Reserva::with(['planificacion.clase', 'planificacion.instructor', 'cliente'])->findOrFail($id);
        return response()->json($reserva);
    }

    /**
     * Actualizar una reserva
     */
    public function update(Request $request, $id)
    {
        $reserva = Reserva::findOrFail($id);

        $request->validate([
            'fk_id_planificacion' => 'sometimes|exists:Planificaciones,id',
            'fk_id_cliente' => 'sometimes|exists:clientes,id',
            'fecha_reserva' => 'sometimes|date',
            'estado' => 'sometimes|string|max:50',
        ]);

        $reserva->update($request->all());

        return response()->json([
            'message' => 'Reserva actualizada correctamente',
            'data' => $reserva
        ]);
    }

    /**
     * Eliminar una reserva
     */
    public function destroy($id)
    {
        $reserva = Reserva::findOrFail($id);
        $reserva->delete();

        return response()->json([
            'message' => 'Reserva eliminada correctamente'
        ]);
    }

    public function cancelarReserva($id)
    {
        $reserva = Reserva::findOrFail($id);
        $reserva->estado = 'cancelada';
        $reserva->save();

        return response()->json([
            'message' => 'Reserva cancelada correctamente',
            'data' => $reserva
        ]);
    }
}
