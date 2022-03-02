<?php

namespace Database\Seeders;

use App\Models\Hibajelent;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class HibajelentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Hibajelent::factory(10)->create();
    }
}
