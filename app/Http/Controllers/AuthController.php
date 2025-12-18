<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Cliente;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'mail' => 'required|email',
            'password' => 'required',
        ]);

        $cliente = Cliente::where('mail', $request->mail)->first();

        if (!$cliente || !Hash::check($request->password, $cliente->password)) {
            return response()->json(['error' => 'Credenciales inválidas'], 401);
        }

        // Verificar estado
        if ($cliente->estado != 1) {
            return response()->json(['error' => 'Cuenta no activada'], 403);
        }

        // Crear token
        $token = $cliente->createToken('API Token')->plainTextToken;

        return response()->json([
            'message' => 'Login exitoso',
            'token' => $token,
            'cliente' => $cliente,
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->tokens()->where('id', $request->user()->currentAccessToken()->id)->delete();
        return response()->json(['message' => 'Logout exitoso']);
    }
}