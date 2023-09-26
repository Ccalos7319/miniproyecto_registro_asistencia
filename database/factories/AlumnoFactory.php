<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Alumno>
 */
class AlumnoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nombre'=>fake()->name(),
            'apellido'=>fake()->lastName(),
            'direccion'=>fake()->address(),
            'correo'=>fake()->email(),
            'telefono'=>fake()->phoneNumber(),
            'edad'=>fake()->numberBetween(18,60),
            'asistencia'=>fake()->randomElement(['T', 'A', 'F']),
        ];
    }
}
