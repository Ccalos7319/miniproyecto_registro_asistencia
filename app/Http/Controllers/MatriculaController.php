<?php

namespace App\Http\Controllers;

use App\Models\Matricula;
use Exception;
use Illuminate\Http\Request;

class MatriculaController extends Controller
{
        /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $matricula = new Matricula();
        return $matricula->all();
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

            // $request->validate(Matricula::rules(), ['nombre.required' => 'El nombre es requerido']);
            $matricula = new Matricula();

            $matricula->id_alumno = $request->id_alumno;
            $matricula->id_curso = $request->id_curso;
        
           
            $matricula->save();
            return  $matricula;
        } catch (Exception $e) {
            return json_encode($e);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $matricula = new Matricula();

        return  $matricula->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        try {
            // $request->validate(Matricula::rules(),['nombre.required'=>'El nombre es requerido']);
            $matricula = Matricula::find($id);
        
            $matricula->id_alumno = $request->id_alumno;
            $matricula->id_curso = $request->id_curso;
           
            $matricula->save();
            return $matricula;
        } catch (\Exception $th) {
            return json_encode($th);
        }
      
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Matricula $matricula)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $matricula = Matricula::find($id);
        $matricula->delete();
        return $matricula;
    }
}
