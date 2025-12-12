<?php

namespace App\Http\Controllers;

use App\Models\Planificacion;
use Illuminate\Http\Request;

class PlanificacionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $planificaciones = Planificacion::with('clase', 'instructor')->get();

        return response()->json([
            'planificaciones' => $planificaciones
            ],
            status: 200,
            options: JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES
        );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Planificacion $planificacion)
    {
        $planificacion->load('clase', 'instructor');

        return response()->json([
            'planificacion' => $planificacion
        ], 200, [], JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Planificacion $planificacion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Planificacion $planificacion)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Planificacion $planificacion)
    {
        //
    }
}