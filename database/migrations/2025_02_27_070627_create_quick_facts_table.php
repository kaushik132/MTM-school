<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuickFactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quick_facts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('student')->nullable();
            $table->integer('teacher')->nullable();
            $table->integer('win_awards')->nullable();
            $table->integer('classes')->nullable();
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
        Schema::dropIfExists('quick_facts');
    }
}
