<?php

namespace Database\Seeders;

use App\Models\Alumno_curso;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Alumno_cursoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Alumno_curso::factory(10)->create();
    }
}
