<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projets', function (Blueprint $table) {
            $table->bigIncrements('id_projet');

            $table->foreignId('user_id');

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('nom_projet');
            $table->date('date_debut');
            $table->date('date_fin');
            $table->integer('etat')->comment('0 = encours, 1 = retard, 2 = terminer');
            $table->integer('heure_total')->nullable();
            $table->longText('description')->nullable();
            $table->string('type_projet')->nullable();
            $table->integer('validation_projet')->comment('0 = nonvalide, 1 = valide');
            $table->integer('archiver_projet')->comment('0 = non_archive, 1 = archive')->nullable();
            $table->integer('cree_par')->nullable();
            $table->string('reference_projet')->nullable();
            $table->string('supprimer_projet')->comment('0 = encours, 1 = supprimé')->default(0);
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
        Schema::dropIfExists('projets');
    }
}
