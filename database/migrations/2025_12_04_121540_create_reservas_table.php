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
        Schema::create('Reservas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('fk_id_planificacion')->nullable();
            $table->unsignedBigInteger('fk_id_cliente')->nullable();
            $table->date('fecha_reserva')->nullable();
            $table->integer('estado')->default(1);
            $table->timestamps();

            $table->foreign('fk_id_planificacion')->references('id')->on('Planificaciones')->onDelete('cascade');
            $table->foreign('fk_id_cliente')->references('id')->on('Clientes')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Reservas');
    }
};
