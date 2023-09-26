<?php

use App\Http\Controllers\Alumno_cursoController;
use App\Http\Controllers\AlumnoController;
use App\Http\Controllers\CursoController;
use App\Http\Controllers\DocenteController;
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

Route::controller(Alumno_cursoController::class)->group(function () {
    Route::get('/alumno_curso','index');
    Route::get('/alumno_curso/{id}','show');
    Route::post('/alumno_curso', 'store');
});