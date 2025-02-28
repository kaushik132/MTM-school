<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSeoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('seo', function (Blueprint $table) {
            $table->increments('id');
            $table->string('seo_home_title')->nullable();
            $table->text('seo_home_des')->nullable();
            $table->string('seo_home_key')->nullable();
            $table->string('seo_about_title')->nullable();
            $table->text('seo_about_des')->nullable();
            $table->text('seo_about_key')->nullable();
            $table->string('seo_contact_title')->nullable();
            $table->text('seo_contact_des')->nullable();
            $table->text('seo_contact_key')->nullable();
            $table->string('seo_activities_title')->nullable();
            $table->text('seo_activities_des')->nullable();
            $table->text('seo_activities_key')->nullable();
            $table->string('seo_addmission_title')->nullable();
            $table->text('seo_addmission_des')->nullable();
            $table->text('seo_addmission_key')->nullable();
            $table->string('seo_application_title')->nullable();
            $table->text('seo_application_des')->nullable();
            $table->text('seo_application_key')->nullable();
            $table->string('seo_facility_title')->nullable();
            $table->text('seo_facility_des')->nullable();
            $table->text('seo_facility_key')->nullable();
            $table->string('seo_fees_title')->nullable();
            $table->text('seo_fees_des')->nullable();
            $table->text('seo_fees_key')->nullable();
            $table->string('seo_gallery_title')->nullable();
            $table->text('seo_gallery_des')->nullable();
            $table->text('seo_gallery_key')->nullable();
            $table->string('seo_user-login_title')->nullable();
            $table->text('seo_user-login_des')->nullable();
            $table->text('seo_user-login_key')->nullable();
            $table->string('seo_user-signup_title')->nullable();
            $table->text('seo_user-signup_des')->nullable();
            $table->text('seo_user-signup_key')->nullable();
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
        Schema::dropIfExists('seo');
    }
}
