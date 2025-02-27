<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWhyChooseUsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('why_choose_us', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image')->nullable();
            $table->string('alt')->nullable();
            $table->string('name')->nullable();
            $table->text('content')->nullable();
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
        Schema::dropIfExists('why_choose_us');
    }
}
