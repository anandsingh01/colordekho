<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mission_models', function (Blueprint $table) {
            $table->id();
            $table->text('about_description')->nullable();
            $table->string('block_text_1')->nullable();
            $table->string('block_summary_1')->nullable();
            $table->string('block_icon_image_1')->nullable();
            $table->string('block_text_2')->nullable();
            $table->string('block_summary_2')->nullable();
            $table->string('block_icon_image_2')->nullable();
            $table->string('block_text_3')->nullable();
            $table->string('block_summary_3')->nullable();
            $table->string('block_icon_image_3')->nullable();
            $table->text('mission_description')->nullable();
            $table->string('counter_text_1')->nullable();
            $table->string('value_summary_1')->nullable();

            $table->string('counter_text_2')->nullable();
            $table->string('value_summary_2')->nullable();

            $table->string('counter_text_3')->nullable();
            $table->string('value_summary_3')->nullable();

            $table->string('counter_text_4')->nullable();
            $table->string('value_summary_4')->nullable();

            $table->string('counter_text_5')->nullable();
            $table->string('value_summary_5')->nullable();

            $table->string('counter_text_6')->nullable();
            $table->string('value_summary_6')->nullable();

            $table->string('counter_text_7')->nullable();
            $table->string('value_summary_7')->nullable();

            $table->string('counter_text_8')->nullable();
            $table->string('value_summary_8')->nullable();

            $table->string('counter_text_9')->nullable();
            $table->string('value_summary_9')->nullable();

            $table->string('mission_background_image')->nullable();
            $table->string('mission_image')->nullable();
            $table->string('vision_background_image')->nullable();
            $table->string('vision_image')->nullable();

            $table->enum('status',['0','1'])->nullable();
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
        Schema::dropIfExists('banner_models');
    }
};
