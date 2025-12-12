<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PlanificacionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Deshabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Truncar la tabla antes de insertar
        DB::table('Planificaciones')->truncate();

        // Datos de las planificaciones extraídos del SQL
        $planificaciones = [
            [
                'id' => 12,
                'dia' => 'Lunes',
                'hora_inicio' => '16:00:00',
                'hora_fin' => '17:00:00',
                'fk_id_clase' => 6,
                'fk_id_inst' => 6,
                'estado' => 1,
            ],
            [
                'id' => 14,
                'dia' => 'Martes',
                'hora_inicio' => '09:30:00',
                'hora_fin' => '10:45:00',
                'fk_id_clase' => 3,
                'fk_id_inst' => 5,
                'estado' => 1,
            ],
            [
                'id' => 15,
                'dia' => 'Martes',
                'hora_inicio' => '12:00:00',
                'hora_fin' => '13:00:00',
                'fk_id_clase' => 4,
                'fk_id_inst' => 9,
                'estado' => 1,
            ],
            [
                'id' => 16,
                'dia' => 'Martes',
                'hora_inicio' => '16:30:00',
                'hora_fin' => '17:30:00',
                'fk_id_clase' => 7,
                'fk_id_inst' => 10,
                'estado' => 1,
            ],
            [
                'id' => 17,
                'dia' => 'Martes',
                'hora_inicio' => '18:30:00',
                'hora_fin' => '19:00:00',
                'fk_id_clase' => 8,
                'fk_id_inst' => 12,
                'estado' => 1,
            ],
            [
                'id' => 18,
                'dia' => 'Miércoles',
                'hora_inicio' => '09:00:00',
                'hora_fin' => '10:30:00',
                'fk_id_clase' => 5,
                'fk_id_inst' => 10,
                'estado' => 1,
            ],
            [
                'id' => 19,
                'dia' => 'Miércoles',
                'hora_inicio' => '12:00:00',
                'hora_fin' => '13:00:00',
                'fk_id_clase' => 1,
                'fk_id_inst' => 1,
                'estado' => 1,
            ],
            [
                'id' => 20,
                'dia' => 'Miércoles',
                'hora_inicio' => '16:00:00',
                'hora_fin' => '17:00:00',
                'fk_id_clase' => 3,
                'fk_id_inst' => 5,
                'estado' => 1,
            ],
            [
                'id' => 21,
                'dia' => 'Miércoles',
                'hora_inicio' => '19:30:00',
                'hora_fin' => '20:45:00',
                'fk_id_clase' => 6,
                'fk_id_inst' => 6,
                'estado' => 1,
            ],
            [
                'id' => 22,
                'dia' => 'Jueves',
                'hora_inicio' => '09:45:00',
                'hora_fin' => '10:30:00',
                'fk_id_clase' => 10,
                'fk_id_inst' => 1,
                'estado' => 1,
            ],
            [
                'id' => 23,
                'dia' => 'Jueves',
                'hora_inicio' => '12:00:00',
                'hora_fin' => '13:15:00',
                'fk_id_clase' => 9,
                'fk_id_inst' => 11,
                'estado' => 1,
            ],
            [
                'id' => 24,
                'dia' => 'Jueves',
                'hora_inicio' => '17:00:00',
                'hora_fin' => '18:15:00',
                'fk_id_clase' => 2,
                'fk_id_inst' => 4,
                'estado' => 1,
            ],
            [
                'id' => 25,
                'dia' => 'Jueves',
                'hora_inicio' => '19:45:00',
                'hora_fin' => '21:00:00',
                'fk_id_clase' => 4,
                'fk_id_inst' => 9,
                'estado' => 1,
            ],
            [
                'id' => 26,
                'dia' => 'Viernes',
                'hora_inicio' => '09:00:00',
                'hora_fin' => '10:00:00',
                'fk_id_clase' => 7,
                'fk_id_inst' => 10,
                'estado' => 1,
            ],
            [
                'id' => 27,
                'dia' => 'Viernes',
                'hora_inicio' => '11:00:00',
                'hora_fin' => '11:45:00',
                'fk_id_clase' => 8,
                'fk_id_inst' => 12,
                'estado' => 1,
            ],
            [
                'id' => 28,
                'dia' => 'Viernes',
                'hora_inicio' => '16:00:00',
                'hora_fin' => '17:30:00',
                'fk_id_clase' => 5,
                'fk_id_inst' => 5,
                'estado' => 1,
            ],
            [
                'id' => 38,
                'dia' => 'Viernes',
                'hora_inicio' => '08:00:00',
                'hora_fin' => '09:00:00',
                'fk_id_clase' => 4,
                'fk_id_inst' => 8,
                'estado' => 1,
            ],
            [
                'id' => 39,
                'dia' => 'Viernes',
                'hora_inicio' => '15:00:00',
                'hora_fin' => '16:00:00',
                'fk_id_clase' => 2,
                'fk_id_inst' => 3,
                'estado' => 1,
            ],
            [
                'id' => 42,
                'dia' => 'Lunes',
                'hora_inicio' => '11:00:00',
                'hora_fin' => '12:00:00',
                'fk_id_clase' => 2,
                'fk_id_inst' => 3,
                'estado' => 1,
            ],
            [
                'id' => 50,
                'dia' => 'Lunes',
                'hora_inicio' => '09:00:00',
                'hora_fin' => '10:00:00',
                'fk_id_clase' => 1,
                'fk_id_inst' => 2,
                'estado' => 1,
            ],
            [
                'id' => 55,
                'dia' => 'Lunes',
                'hora_inicio' => '08:00:00',
                'hora_fin' => '09:00:00',
                'fk_id_clase' => 3,
                'fk_id_inst' => 2,
                'estado' => 1,
            ],
        ];

        // Insertar los datos
        DB::table('Planificaciones')->insert($planificaciones);

        // Rehabilitar restricciones de clave foránea
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}