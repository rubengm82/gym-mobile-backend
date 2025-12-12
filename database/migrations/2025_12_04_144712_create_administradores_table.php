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
        Schema::create('Administradores', function (Blueprint $table) {
            $table->id('id_user');
            $table->string('mail', 255)->nullable()->unique();
            $table->string('rol', 100)->nullable();
            $table->string('password', 255)->nullable();
            $table->integer('estado')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('administradores');
    }
};
