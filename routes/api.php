<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\PlanificacionController;


/////////////////////
// AUTOMATIC ROUTES
/////////////////////
// Route::apiResource('clientes', ClienteController::class);



//////////////////
// MANUAL ROUTES
//////////////////

// CLIENTES
Route::get('/clientes', [ClienteController::class, 'index']);
Route::post('/clientes', [ClienteController::class, 'store']);
Route::get('/clientes/{cliente}', [ClienteController::class, 'show']);
Route::put('/clientes/{cliente}', [ClienteController::class, 'update']);
Route::delete('/clientes/{cliente}', [ClienteController::class, 'destroy']);

// PLANIFICACIONES
Route::get('/planificaciones', [PlanificacionController::class, 'index']);
Route::post('/planificaciones', [PlanificacionController::class, 'store']);
Route::get('/planificaciones/{planificacion}', [PlanificacionController::class, 'show']);
Route::put('/planificaciones/{planificacion}', [PlanificacionController::class, 'update']);
Route::delete('/planificaciones/{planificacion}', [PlanificacionController::class, 'destroy']);