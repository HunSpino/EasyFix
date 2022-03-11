<?php

namespace Database\Seeders;

use App\Models\Allapot;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(10)->create();
        User::factory(2)->create(['role' => 'Admin']);
        $this->call(GepekSeeder::class);
        Allapot::factory()->createMany([
            ['id' => 1, 'allapot' => 'Nincs megkezdve'],
            ['id' => 2, 'allapot' => 'Folyamatban van'],
            ['id' => 3, 'allapot' => 'Kész']
        ]);
        $this->call(HibajelentSeeder::class);
    }
}
