<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\PlanificacionController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ReservaController;



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


// ROUTES PROTEGIDAS
Route::middleware('auth:sanctum')->group(function () {
    
});


// CLIENTES
Route::get('/clientes', [ClienteController::class, 'index']);
Route::get('/clientes/{cliente}', [ClienteController::class, 'show']);
Route::put('/clientes/{cliente}', [ClienteController::class, 'update']);

// PLANIFICACIONES
Route::get('/planificaciones', [PlanificacionController::class, 'index']);
Route::get('/planificaciones/{planificacion}', [PlanificacionController::class, 'show']);
Route::put('/planificaciones/{planificacion}', [PlanificacionController::class, 'update']);

// RESERVAS
Route::get('/reservas', [ReservaController::class, 'index']);
Route::get('/reservas/{reserva}', [ReservaController::class, 'show']);
Route::post('/reservas', [ReservaController::class, 'store']);
Route::put('/reservas/{reserva}', [ReservaController::class, 'update']);
Route::delete('/reservas/{reserva}', [ReservaController::class, 'destroy']);
Route::post('/reservas/{reserva}/cancelar', [ReservaController::class, 'cancelarReserva']);
