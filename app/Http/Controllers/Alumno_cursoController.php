<?php

namespace App\Http\Controllers;

use App\Models\Alumno_curso;
use Illuminate\Http\Request;

class Alumno_cursoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alumno_curso = new Alumno_curso();
        return $alumno_curso->all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $data = $request->validate([
                'alumno_id' => 'required|exists:alumnos,id',
                'curso_id' => 'required|exists:cursos,id',
            ]);
            $matriculacion = new Alumno_curso;
            $matriculacion->alumno_id = $data['alumno_id'];
            $matriculacion->curso_id = $data['curso_id'];
            $matriculacion->save();

            return redirect()->route('matriculacion.index')->with('success', 'Alumno matriculado exitosamente en el curso.');
        } catch (\Exception $th) {
            return json_encode($th);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $alumno_curso = Alumno_curso::with('alumno', 'curso')->find($id);
        return $alumno_curso;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
