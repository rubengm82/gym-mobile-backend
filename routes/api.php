<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\PlanificacionController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ConfirmacionController;

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

//CONFIRMACIONES
Route::put('/reservas/{id}/confirmada', [ConfirmacionController::class, 'update']);