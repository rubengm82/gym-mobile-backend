<?php

namespace App\Http\Controllers;

use App\Models\Reserva;
use Illuminate\Http\Request;

class ConfirmacionController extends Controller
{

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $reserva= Reserva::findOrFail($id);
        $reserva->update([
            'estado' => '2'
        ]);
        
        return response()->json([
            'message' => 'Reserva actualizada exitosamente', 
            'reserva' => $reserva
        ], 200);
    }
}
