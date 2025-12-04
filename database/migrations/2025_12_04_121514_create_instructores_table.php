<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('Instructores', function (Blueprint $table) {
            $table->integer('id_inst')->primary();
            $table->string('nombre', 100)->nullable();
            $table->string('apellido1', 100)->nullable();
            $table->string('apellido2', 100)->nullable();
            $table->string('telefono', 15)->nullable();
            $table->string('DNI', 20)->nullable()->unique();
            $table->string('estado', 50)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Instructores');
    }
};
