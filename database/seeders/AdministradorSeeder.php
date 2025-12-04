<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdministradorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Deshabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Truncar la tabla antes de insertar
        DB::table('Administradores')->truncate();

        // Datos de los administradores extraídos del SQL
        $administradores = [
            [
                'id_user' => 1,
                'mail' => 'nicolas@a.es',
                'rol' => 'admin',
                'password' => Hash::make('admin'),
                'estado' => 1,
            ],
            [
                'id_user' => 2,
                'mail' => 'admin',
                'rol' => 'admin',
                'password' => Hash::make('admin'),
                'estado' => 1,
            ],
        ];

        // Insertar los datos
        DB::table('Administradores')->insert($administradores);

        // Rehabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
