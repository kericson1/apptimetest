<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEquipementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('equipements', function (Blueprint $table) {
            $table->bigIncrements('id_equipement');
            $table->string('type')->nullable();
            $table->string('logiciel')->nullable();
            $table->string('identification')->nullable();
            $table->string('equipement')->nullable();
            $table->string('modele')->nullable();
            $table->string('cpu')->nullable();
            $table->string('gpu')->nullable();
            $table->string('ram')->nullable();
            $table->string('clavier')->nullable();
            $table->string('disque')->nullable();
            $table->string('capacite')->nullable();
            $table->string('marque')->nullable();
            $table->string('annee')->nullable();
            $table->string('de')->nullable();
            $table->string('a')->nullable();
            $table->string('description')->nullable();
            $table->string('etat')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('equipements');
    }
}
