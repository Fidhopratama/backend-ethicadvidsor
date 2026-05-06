<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| PUBLIC ROUTES
|--------------------------------------------------------------------------
*/
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

/*
|--------------------------------------------------------------------------
| AUTH ROUTES (SANCTUM)
|--------------------------------------------------------------------------
*/
Route::middleware(['auth:sanctum'])->group(function () {

    /*
    |---------------- USER ROUTES
    */
    Route::get('/uploads', [UploadController::class, 'index']);
    Route::post('/upload', [UploadController::class, 'store']);

    /*
    |---------------- ADMIN ROUTES
    | NOTE: nanti idealnya tambah middleware role admin
    */
    Route::prefix('admin')->group(function () {
        Route::get('/dashboard', [AdminController::class, 'dashboard']);
        Route::get('/users', [AdminController::class, 'users']);
        Route::get('/uploads', [AdminController::class, 'uploads']);
    });

});