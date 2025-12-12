<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class InstructorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Deshabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Truncar la tabla antes de insertar
        DB::table('Instructores')->truncate();

        // Datos de los instructores extraídos del SQL
        $instructores = [
            [
                'id' => 1,
                'nombre' => 'Ana',
                'apellido1' => 'Pérez',
                'apellido2' => 'García',
                'telefono' => '612345678',
                'DNI' => '12345678Z',
                'estado' => '1',
            ],
            [
                'id' => 2,
                'nombre' => 'Carlos',
                'apellido1' => 'Díaz',
                'apellido2' => 'López',
                'telefono' => '698765432',
                'DNI' => '87654321Z',
                'estado' => '0',
            ],
            [
                'id' => 3,
                'nombre' => 'Lucía',
                'apellido1' => 'Martínez',
                'apellido2' => 'Hernández',
                'telefono' => '600123456',
                'DNI' => '23456789M',
                'estado' => '0',
            ],
            [
                'id' => 4,
                'nombre' => 'Javier',
                'apellido1' => 'Gómez',
                'apellido2' => 'Santos',
                'telefono' => '601234567',
                'DNI' => '34567890X',
                'estado' => '1',
            ],
            [
                'id' => 5,
                'nombre' => 'María',
                'apellido1' => 'Ruiz',
                'apellido2' => 'Fernández',
                'telefono' => '602345678',
                'DNI' => '45678901F',
                'estado' => '1',
            ],
            [
                'id' => 6,
                'nombre' => 'David',
                'apellido1' => 'Sánchez',
                'apellido2' => 'Moreno',
                'telefono' => '603456789',
                'DNI' => '56789012R',
                'estado' => '1',
            ],
            [
                'id' => 7,
                'nombre' => 'Laura',
                'apellido1' => 'Torres',
                'apellido2' => 'Vega',
                'telefono' => '604567890',
                'DNI' => '67890123B',
                'estado' => '0',
            ],
            [
                'id' => 8,
                'nombre' => 'Pablo',
                'apellido1' => 'Ramírez',
                'apellido2' => 'Castillo',
                'telefono' => '605678901',
                'DNI' => '78901234G',
                'estado' => '0',
            ],
            [
                'id' => 9,
                'nombre' => 'Sara',
                'apellido1' => 'Jiménez',
                'apellido2' => 'Blanco',
                'telefono' => '606789012',
                'DNI' => '89012345K',
                'estado' => '1',
            ],
            [
                'id' => 10,
                'nombre' => 'Miguel',
                'apellido1' => 'Cruz',
                'apellido2' => 'Ortiz',
                'telefono' => '607890123',
                'DNI' => '90123456S',
                'estado' => '1',
            ],
            [
                'id' => 11,
                'nombre' => 'Jose ',
                'apellido1' => 'Peña',
                'apellido2' => 'Salazar',
                'telefono' => '645123450',
                'DNI' => '67676787L',
                'estado' => '1',
            ],
            [
                'id' => 12,
                'nombre' => 'Nico',
                'apellido1' => 'Alvarezs',
                'apellido2' => 'Alcaraz',
                'telefono' => '645334455',
                'DNI' => '44537388R',
                'estado' => '1',
            ],
            [
                'id' => 40,
                'nombre' => 'Robert',
                'apellido1' => 'Palancuela',
                'apellido2' => 'Ibuñez',
                'telefono' => '645812201',
                'DNI' => '83157370L',
                'estado' => '1',
            ],
        ];

        // Insertar los datos
        DB::table('Instructores')->insert($instructores);

        // Rehabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}