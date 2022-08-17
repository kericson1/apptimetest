<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToProjets extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('projets', function (Blueprint $table) {
            $table->foreignId('id_client')->after('user_id')->nullable();
            $table->foreign('id_client')
                ->references('id_client')
                ->on('clients')
                ->onDelete('cascade');

            $table->foreignId('id_sponsor')->after('id_client')->nullable();
            $table->foreign('id_sponsor')
                ->references('id_sponsor')
                ->on('sponsors')
                ->onDelete('cascade');

            $table->string('progression')->after('id_sponsor')->default(0);
            $table->string('encours')->after('progression')->default(0);
            $table->string('termine')->after('encours')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('projets', function (Blueprint $table) {
            $table->dropColumn('id_client');
            $table->dropColumn('id_sponsor');
            $table->dropColumn('progression');
            $table->dropColumn('encours');
            $table->dropColumn('termine');
        });
    }
}
