<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConstellations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('constellations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50)->comment('星座名字');
            $table->date('date')->comment('日期');
            $table->string('whole_luck', 255)->comment('星座名字');
            $table->string('whole_description', 255)->comment('星座名字');
            $table->string('love_luck', 255)->comment('星座名字');
            $table->string('love_description', 255)->comment('星座名字');
            $table->string('career_luck', 255)->comment('星座名字');
            $table->string('career_description', 255)->comment('星座名字');
            $table->string('wealth_luck', 255)->comment('星座名字');
            $table->string('wealth_description', 255)->comment('星座名字');

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
        Schema::dropIfExists('constellations');
    }
}
