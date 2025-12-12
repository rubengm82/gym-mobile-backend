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
        Schema::create('Planificaciones', function (Blueprint $table) {
            $table->id();
            $table->string('dia', 20)->nullable();
            $table->time('hora_inicio')->nullable();
            $table->time('hora_fin')->nullable();
            $table->unsignedBigInteger('fk_id_clase')->nullable();
            $table->unsignedBigInteger('fk_id_inst')->nullable();
            $table->integer('estado')->default(1);
            $table->timestamps();

            $table->foreign('fk_id_clase')->references('id')->on('Clases')->onDelete('cascade');
            $table->foreign('fk_id_inst')->references('id')->on('Instructores')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Planificaciones');
    }
};
