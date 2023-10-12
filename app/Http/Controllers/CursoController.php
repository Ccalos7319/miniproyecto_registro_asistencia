<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use Illuminate\Http\Request;

class CursoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $curso = new Curso();
        return $curso->all();
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
            $curso = new Curso();

            $curso->nombre = $request->nombre;
            $curso->codigo_curso = $request->codigo_curso;
            $curso->descripcion = $request->descripcion;

            $curso->save();
            return $curso;
        } catch (\Exception $th) {
            return json_encode($th);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Curso $id)
    {
        $curso = new Curso();
        return $curso->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        try {
            $curso = Curso::find($id);

            $curso->nombre = $request->nombre;
            $curso->codigo_curso = $request->codigo_curso;
            $curso->descripcion = $request->descripcion;
            
            $curso->save();
            return $curso;
        } catch (\Throwable $th) {
            //throw $th;
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Curso $curso)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Curso $id)
    {
        $curso = Curso::find($id);
        $curso->delete();
        return $curso;
    }
}
