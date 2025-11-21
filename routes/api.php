<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClienteController;


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

