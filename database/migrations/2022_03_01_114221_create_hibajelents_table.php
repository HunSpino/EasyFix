<?php

use App\Models\Allapot;
use App\Models\Gepek;
use App\Models\Hibajelent;
use App\Models\User;
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
        Schema::create('hibajelents', function (Blueprint $table) {
            $table->id();
            $table->dateTime('datum');
            $table->string('hiba');
            $table->timestamps();
        });
        Schema::table('hibajelents',function (Blueprint $table){
            $table->foreignIdFor(User::class)->constrained();
        });
        Schema::table('hibajelents',function (Blueprint $table){
            $table->foreignIdFor(Gepek::class)->constrained();
        });
        Schema::table('hibajelents',function (Blueprint $table){
            $table->foreignIdFor(Allapot::class)->constrained();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('hibajelents',function (Blueprint $table){
            $table->dropForeignIdFor(User::class);
        });
        Schema::table('hibajelents',function (Blueprint $table){
            $table->dropForeignIdFor(Gepek::class);
        });
        Schema::table('hibajelents',function (Blueprint $table){
            $table->dropForeignIdFor(Allapot::class);
        });

        Schema::dropIfExists('hibajelents');
    }
};
