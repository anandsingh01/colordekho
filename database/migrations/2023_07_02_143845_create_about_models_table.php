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
        Schema::create('about_models', function (Blueprint $table) {
            $table->id();
            $table->string('about_description')->nullable();
            $table->string('block_text_1')->nullable();
            $table->text('block_summary_1')->nullable();
            $table->text('block_text_2')->nullable();
            $table->text('block_summary_2')->nullable();
            $table->string('block_text_3')->nullable();
            $table->string('block_summary_3')->nullable();
            $table->text('why_choose_description')->nullable();
            $table->string('counter_text_1')->nullable();
            $table->string('counter_summary_1')->nullable();
            $table->string('counter_text_2')->nullable();
            $table->string('counter_summary_2')->nullable();
            $table->string('counter_text_3')->nullable();
            $table->string('counter_summary_3')->nullable();
            $table->string('banner_image')->nullable();
            $table->string('about_image')->nullable();
            $table->string('block_bg_image_1')->nullable();
            $table->string('block_icon_image_1')->nullable();
            $table->string('block_bg_image_2')->nullable();
            $table->string('block_icon_image_2')->nullable();
            $table->string('block_bg_image_3')->nullable();
            $table->string('block_icon_image_3')->nullable();
            $table->string('why_choose_background_image')->nullable();
            $table->string('why_choose_image')->nullable();
            $table->string('counter_background_image')->nullable();
            $table->string('counter_bg_image_1')->nullable();
            $table->string('counter_icon_image_1')->nullable();
            $table->string('counter_icon_image_2')->nullable();
            $table->string('counter_icon_image_3')->nullable();
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
