<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use Exception;
use Illuminate\Http\Request;

class AlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alumno = new Alumno();
        return $alumno->all();
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

            // $request->validate(Docente::rules(), ['nombre.required' => 'El nombre es requerido']);
            $alumno = new Alumno();
            $alumno->nombre = $request->nombre;
            $alumno->apellido = $request->apellido;
            $alumno->direccion = $request->direccion;
            $alumno->correo = $request->correo;
            $alumno->telefono = $request->telefono;
            $alumno->edad = $request->edad;

            $alumno->save();
            return  $alumno;
        } catch (Exception $e) {
            return json_encode($e);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $alumno = new Alumno();

        return  $alumno->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        try {
            $alumno = Alumno::find($id);
            $alumno->nombre = $request->nombre;
            $alumno->apellido = $request->apellido;
            $alumno->direccion = $request->direccion;
            $alumno->correo = $request->correo;
            $alumno->telefono = $request->telefono;
            $alumno->edad = $request->edad;
         
            $alumno->save();
            return $alumno;
        } catch (\Exception $th) {
            return json_encode($th);
        }
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Alumno $alumno)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Alumno $id)
    {
        $alumno = Alumno::find($id);
        $alumno->delete();
        return $alumno;
    }
}
