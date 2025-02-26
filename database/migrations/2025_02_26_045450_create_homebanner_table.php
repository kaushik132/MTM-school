<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHomebannerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('homebanner', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->nullable();
            $table->text('short_description')->nullable();
            $table->string('image')->nullable();
            $table->string('bgcolor')->nullable();
            $table->string('about_more')->nullable();
            $table->string('learn_more')->nullable();
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
        Schema::dropIfExists('homebanner');
    }
}
