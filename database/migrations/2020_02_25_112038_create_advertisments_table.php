<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Artisan;

class CreateAdvertismentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('advertisments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title')->default(null)->nullable();
            $table->text('code')->default(null)->nullable();
            $table->boolean('is_active')->default(true)->nullable();
            $table->integer('type')->unsigned()->default(null)->nullable()->comment("1=default,2=segmented");
            $table->timestamps();
        });

        Artisan::call('db:seed', [
        '--class' => AdvertismentSeeder::class
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('advertisments');
    }
}
