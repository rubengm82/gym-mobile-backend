<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\PlanificacionController;
use App\Http\Controllers\AuthController;



/////////////////////
// AUTOMATIC ROUTES
/////////////////////
// Route::apiResource('clientes', ClienteController::class);



////////////////
// MANUAL ROUTES
////////////////

// AUTH
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');

// CLIENTES (registro público, otras protegidas)
Route::post('/clientes', [ClienteController::class, 'store']); // Registro público

Route::middleware('auth:sanctum')->group(function () {
    // CLIENTES protegidas
    Route::get('/clientes', [ClienteController::class, 'index']);
    Route::get('/clientes/{cliente}', [ClienteController::class, 'show']);
    Route::put('/clientes/{cliente}', [ClienteController::class, 'update']);
    Route::delete('/clientes/{cliente}', [ClienteController::class, 'destroy']);

    // PLANIFICACIONES protegidas
    Route::get('/planificaciones', [PlanificacionController::class, 'index']);
    Route::post('/planificaciones', [PlanificacionController::class, 'store']);
    Route::get('/planificaciones/{planificacion}', [PlanificacionController::class, 'show']);
    Route::put('/planificaciones/{planificacion}', [PlanificacionController::class, 'update']);
    Route::delete('/planificaciones/{planificacion}', [PlanificacionController::class, 'destroy']);
});