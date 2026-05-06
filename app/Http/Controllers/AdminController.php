<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Upload;

/**
 * @OA\Get(
 *     path="/api/admin/dashboard",
 *     tags={"Admin"},
 *     summary="Dashboard admin",
 *     security={{"sanctum":{}}},
 *     @OA\Response(response=200, description="Data dashboard")
 * )
 */

/**
 * @OA\Get(
 *     path="/api/admin/users",
 *     tags={"Admin"},
 *     summary="Ambil semua user",
 *     security={{"sanctum":{}}},
 *     @OA\Response(response=200, description="List user")
 * )
 */

/**
 * @OA\Get(
 *     path="/api/admin/uploads",
 *     tags={"Admin"},
 *     summary="Ambil semua upload",
 *     security={{"sanctum":{}}},
 *     @OA\Response(response=200, description="List upload")
 * )
 */


class AdminController extends Controller
{
    public function dashboard()
    {
        return response()->json([
            'total_users'   => User::count(),
            'total_uploads' => Upload::count(),
            'esg_average'   => 0
        ]);
    }

    public function users()
    {
        return response()->json(
            User::select('id', 'name', 'email', 'role')->get()
        );
    }

    public function uploads()
    {
        $uploads = Upload::with('user')
            ->latest()
            ->get()
            ->map(function ($upload) {

                return [
                    'id'        => $upload->id,
                    // ✅ kirim FULL konsisten
                   'user'      => $upload->user,
                    // 🔥 pakai file_name (bukan file_path)
                    'file_name' => $upload->file_name ?? '-',
                    'file_path' => $upload->file_path ?? '-',
                    'type'      => $upload->type ?? '-',
                ];
            });

        return response()->json($uploads);
    }
}