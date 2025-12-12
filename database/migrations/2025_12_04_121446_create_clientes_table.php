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
        Schema::create('Clientes', function (Blueprint $table) {
            $table->id('id_cliente');
            $table->string('nombre', 100)->nullable();
            $table->string('apellido1', 100)->nullable();
            $table->string('apellido2', 100)->nullable();
            $table->string('IBAN', 30)->nullable();
            $table->string('mail', 255)->nullable()->unique();
            $table->string('telefono', 15)->nullable();
            $table->string('password', 255)->nullable();
            $table->string('remember_token', 255)->nullable();
            $table->integer('estado')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Clientes');
    }
};
