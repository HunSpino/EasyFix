<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Hibajelent>
 */
class HibajelentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'hiba' => $this->faker->text(),
            'user_id' => $this->faker->numberBetween(1,10),
            'gepek_id' => $this->faker->numberBetween(1,15),
            'allapot_id' => $this->faker->numberBetween(1,3)
        ];
    }
}
//
