<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Deshabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Truncar la tabla antes de insertar
        DB::table('Clases')->truncate();

        // Datos de las clases extraídos del SQL
        $clases = [
            [
                'id_clase' => 1,
                'nombre' => 'Yoga',
                'aforo' => 3,
                'descripcion' => 'Clase de yoga para principiantes',
                'estado' => 1,
            ],
            [
                'id_clase' => 2,
                'nombre' => 'Crossfit',
                'aforo' => 3,
                'descripcion' => 'Entrenamiento de alta intensidad',
                'estado' => 1,
            ],
            [
                'id_clase' => 3,
                'nombre' => 'Pilates',
                'aforo' => 4,
                'descripcion' => 'Pilates para fortalecer el core',
                'estado' => 1,
            ],
            [
                'id_clase' => 4,
                'nombre' => 'Zumba',
                'aforo' => 2,
                'descripcion' => 'Baile y cardio divertido',
                'estado' => 1,
            ],
            [
                'id_clase' => 5,
                'nombre' => 'Spinning',
                'aforo' => 3,
                'descripcion' => 'Bicicleta estática en grupo',
                'estado' => 1,
            ],
            [
                'id_clase' => 6,
                'nombre' => 'Boxeo',
                'aforo' => 2,
                'descripcion' => 'Entrenamiento de boxeo para principiantes',
                'estado' => 1,
            ],
            [
                'id_clase' => 7,
                'nombre' => 'HIIT',
                'aforo' => 2,
                'descripcion' => 'Sesión de alta intensidad',
                'estado' => 1,
            ],
            [
                'id_clase' => 8,
                'nombre' => 'Meditación',
                'aforo' => 3,
                'descripcion' => 'Meditación para relajamiento',
                'estado' => 1,
            ],
            [
                'id_clase' => 9,
                'nombre' => 'Funcional',
                'aforo' => 2,
                'descripcion' => 'Funcional para movimiento total corporal',
                'estado' => 1,
            ],
            [
                'id_clase' => 10,
                'nombre' => 'Cardio Dance',
                'aforo' => 3,
                'descripcion' => 'Baile para cardio',
                'estado' => 1,
            ],
            [
                'id_clase' => 11,
                'nombre' => 'Judo',
                'aforo' => 3,
                'descripcion' => 'Clase de judo para principiantes',
                'estado' => 0,
            ],
            [
                'id_clase' => 12,
                'nombre' => 'Taekwondo',
                'aforo' => 2,
                'descripcion' => 'Taekwondo para todos los niveles',
                'estado' => 0,
            ],
        ];

        // Insertar los datos
        DB::table('Clases')->insert($clases);

        // Rehabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}