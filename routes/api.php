<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\AdminController;

// =========================
// AUTH
// =========================
Route::post('/login', [AuthController::class, 'login']);

Route::post('/register', [AuthController::class, 'register']);


// =========================
// USER
// =========================
Route::middleware('auth:sanctum')->group(function () {

    // USER UPLOADS
    Route::get('/uploads', [UploadController::class, 'index']);

    Route::post('/upload', [UploadController::class, 'store']);
});


// =========================
// ADMIN
// =========================
Route::prefix('admin')
    ->middleware('auth:sanctum')
    ->group(function () {

        // DASHBOARD
        Route::get(
            '/dashboard',
            [AdminController::class, 'dashboard']
        );

        // USERS
        Route::get(
            '/users',
            [AdminController::class, 'users']
        );

        Route::put(
            '/users/{id}',
            [AdminController::class, 'updateUser']
        );

        Route::delete(
            '/users/{id}',
            [AdminController::class, 'deleteUser']
        );

        // UPLOADS
        Route::get(
            '/uploads',
            [AdminController::class, 'uploads']
        );

        // 🔥 DELETE UPLOAD
        Route::delete(
            '/uploads/{id}',
            [AdminController::class, 'deleteUpload']
        );
    });