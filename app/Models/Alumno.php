<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alumno extends Model
{
    use HasFactory;
    public function cursos()
    {
        return $this->belongsTo(Curso::class, 'alumno_id');
    }
}
