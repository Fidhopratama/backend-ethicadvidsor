<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Auth\AuthenticationException;
use Laravel\Sanctum\Http\Middleware\EnsureFrontendRequestsAreStateful;

return Application::configure(basePath: dirname(__DIR__))

    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )

    ->withMiddleware(function (Middleware $middleware): void {

        // ✅ alias middleware
        $middleware->alias([
            'auth' => \App\Http\Middleware\Authenticate::class,
        ]);

        // 🔥 IMPORTANT: Sanctum API stateful middleware
        $middleware->api(prepend: [
            EnsureFrontendRequestsAreStateful::class,
        ]);
    })

    ->withExceptions(function (Exceptions $exceptions): void {

        // 🔥 paksa API selalu JSON kalau auth gagal
        $exceptions->render(function (AuthenticationException $e, $request) {

            if ($request->expectsJson()) {
                return response()->json([
                    'message' => 'Unauthenticated'
                ], 401);
            }

            return redirect('/login');
        });

    })

    ->create();