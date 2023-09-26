<?php

namespace App\Http\Controllers;

use App\Models\Docente;
use Exception;
use Illuminate\Http\Request;

class DocenteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $docente = new Docente();
        return $docente->all();
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
            $docente = new Docente();
            $docente->nombre = $request->nombre;
            $docente->apellido = $request->apellido;
            $docente->direccion = $request->direccion;
            $docente->correo = $request->correo;
            $docente->telefono = $request->telefono;
            $docente->edad = $request->edad;
            $docente->save();
            return  $docente;
        } catch (Exception $e) {
            return json_encode($e);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $docente = new Docente();

        return  $docente->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Request $request)
    {
        try {
            // $request->validate(Docente::rules(),['nombre.required'=>'El nombre es requerido']);
            $docente = Docente::find($id);
            $docente->nombre = $request->nombre;
            $docente->apellido = $request->apellido;
            $docente->direccion = $request->direccion;
            $docente->correo = $request->correo;
            $docente->telefono = $request->telefono;
            $docente->edad = $request->edad;
            $docente->save();
            return $docente;
        } catch (\Exception $th) {
            return json_encode($th);
        }
      
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Docente $docente)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $docente = Docente::find($id);
        $docente->delete();
        return $docente;
    }
}
