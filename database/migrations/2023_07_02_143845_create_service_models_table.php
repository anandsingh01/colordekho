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
        Schema::create('service_models', function (Blueprint $table) {
            $table->id();
            $table->string('banner_image')->nullable();
            $table->string('service_name')->nullable();
            $table->text('service_summary')->nullable();
            $table->text('service_image')->nullable();
            $table->text('service_description')->nullable();
            $table->string('block_text_1')->nullable();
            $table->string('block_summary_1')->nullable();
            $table->string('block_bg_image_1')->nullable();
            $table->string('block_icon_image_1')->nullable();
            $table->string('block_text_2')->nullable();
            $table->string('block_summary_2')->nullable();
            $table->string('block_bg_image_2')->nullable();
            $table->string('block_icon_image_2')->nullable();
            $table->string('block_text_3')->nullable();
            $table->string('block_summary_3')->nullable();
            $table->string('block_bg_image_3')->nullable();
            $table->string('block_icon_image_3')->nullable();
            $table->string('upload_gallery')->nullable();
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
