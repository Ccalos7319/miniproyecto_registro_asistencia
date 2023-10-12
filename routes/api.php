<?php

use App\Http\Controllers\Alumno_cursoController;
use App\Http\Controllers\AlumnoController;
use App\Http\Controllers\AsistenciaController;
use App\Http\Controllers\CursoController;
use App\Http\Controllers\DocenteController;
use App\Http\Controllers\MatriculaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::controller(DocenteController::class)->group(function () {
    Route::get('/docente', 'index');
    Route::get('/docente/{id}', 'show');
    Route::post('/docente', 'store');
    Route::put('/docente/{id}', 'edit');
    Route::delete('/docente/{id}', 'destroy');
   
});
Route::controller(AlumnoController::class)->group(function () {
    Route::get('/alumno', 'index');
    Route::get('/alumno/{id}', 'show');
    Route::post('/alumno', 'store');
    Route::put('/alumno/{id}', 'edit');
    Route::delete('/alumno/{id}', 'destroy');
   
});
Route::controller(CursoController::class)->group(function () {
    Route::get('/curso', 'index');
    Route::get('/curso/{id}', 'show');
    Route::post('/curso', 'store');
    Route::put('/curso/{id}', 'edit');
    Route::delete('/curso/{id}', 'destroy');
   
});

Route::controller(AsistenciaController::class)->group(function () {
    Route::get('/asistencia', 'index');
    Route::get('/asistencia/{id}', 'show');
    Route::post('/asistencia', 'store');
    Route::put('/asistencia/{id}', 'edit');
    Route::delete('/asistencia/{id}', 'destroy');
   
});
Route::controller(MatriculaController::class)->group(function () {
    Route::get('/matricula', 'index');
    Route::get('/matricula/{id}', 'show');
    Route::post('/matricula', 'store');
    Route::put('/matricula/{id}', 'edit');
    Route::delete('/matricula/{id}', 'destroy');
   
});