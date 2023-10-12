<?php

namespace App\Http\Controllers;

use App\Models\Asistencia;
use Illuminate\Http\Request;

class AsistenciaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $asistencia = new Asistencia();
        return $asistencia->all();
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
            $asistencia = new Asistencia();

            $asistencia->id_alumno = $request->id_alumno;
            $asistencia->id_curso = $request->id_curso;
            $asistencia->fecha = $request->fecha;
            $asistencia->asistencia = $request->asistencia;

            $asistencia->save();
            return $asistencia;
        } catch (\Exception $th) {
            return json_encode($th);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Asistencia $id)
    {
        $asistencia = new Asistencia();
        return $asistencia->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        try {
            $asistencia = Asistencia::find($id);

            $asistencia->id_alumno = $request->id_alumno;
            $asistencia->id_curso = $request->id_curso;
            $asistencia->fecha = $request->fecha;
            $asistencia->asistencia = $request->asistencia;

            $asistencia->save();
            return $asistencia;
        } catch (\Throwable $th) {
            //throw $th;
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Asistencia $asistencia)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Asistencia $id)
    {
        $asistencia = Asistencia::find($id);
        $asistencia->delete();
        return $asistencia;
    }
}
