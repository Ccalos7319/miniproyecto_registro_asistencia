<?php

namespace Database\Seeders;

use App\Models\Curso;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CursoSeeder extends Seeder
{
    protected $table = 'alumno_curso';
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Curso::factory(50)->create();

    }
}
