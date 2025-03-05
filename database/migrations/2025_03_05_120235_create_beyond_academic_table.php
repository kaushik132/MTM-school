<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBeyondAcademicTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('beyond_academic', function (Blueprint $table) {
            $table->increments('id');
            $table->string('banner_image')->nullable();
            $table->string('banner_alt')->nullable();
            $table->string('image')->nullable();
            $table->string('alt')->nullable();
            $table->string('heading_title')->nullable();
            $table->string('vidoe_link')->nullable();
            $table->text('contant')->nullable();
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
        Schema::dropIfExists('beyond_academic');
    }
}
