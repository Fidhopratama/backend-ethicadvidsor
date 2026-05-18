<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Upload;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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
 * @OA\Put(
 *     path="/api/admin/users/{id}",
 *     tags={"Admin"},
 *     summary="Update user",
 *     security={{"sanctum":{}}},
 *     @OA\Parameter(
 *          name="id",
 *          in="path",
 *          required=true,
 *          @OA\Schema(type="integer")
 *     ),
 *     @OA\RequestBody(
 *          required=true,
 *          @OA\JsonContent(
 *              required={"name","email","role"},
 *              @OA\Property(property="name", type="string"),
 *              @OA\Property(property="email", type="string"),
 *              @OA\Property(property="role", type="string")
 *          )
 *     ),
 *     @OA\Response(response=200, description="User berhasil diupdate")
 * )
 */

/**
 * @OA\Delete(
 *     path="/api/admin/users/{id}",
 *     tags={"Admin"},
 *     summary="Hapus user",
 *     security={{"sanctum":{}}},
 *     @OA\Parameter(
 *          name="id",
 *          in="path",
 *          required=true,
 *          @OA\Schema(type="integer")
 *     ),
 *     @OA\Response(response=200, description="User berhasil dihapus")
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

/**
 * @OA\Delete(
 *     path="/api/admin/uploads/{id}",
 *     tags={"Admin"},
 *     summary="Hapus upload",
 *     security={{"sanctum":{}}},
 *     @OA\Parameter(
 *          name="id",
 *          in="path",
 *          required=true,
 *          @OA\Schema(type="integer")
 *     ),
 *     @OA\Response(response=200, description="Upload berhasil dihapus")
 * )
 */

class AdminController extends Controller
{
    // =========================
    // DASHBOARD
    // =========================
    public function dashboard()
    {
        $totalUploads = Upload::count();

        $finance = Upload::where('type', 'finance')->count();

        $esg = Upload::where('type', 'esg')->count();

        $financePercent = $totalUploads > 0
            ? round(($finance / $totalUploads) * 100)
            : 0;

        $esgPercent = $totalUploads > 0
            ? round(($esg / $totalUploads) * 100)
            : 0;

        return response()->json([
            'total_users'   => User::count(),

            'total_uploads' => $totalUploads,

            'finance'       => $financePercent,

            'esg'           => $esgPercent,
        ]);
    }

    // =========================
    // GET USERS
    // =========================
    public function users()
    {
        return response()->json(
            User::select(
                'id',
                'name',
                'email',
                'role'
            )->latest()->get()
        );
    }

    // =========================
    // UPDATE USER
    // =========================
    public function updateUser(Request $request, $id)
    {
        $request->validate([
            'name'  => 'required|string|max:255',
            'email' => 'required|email',
            'role'  => 'required|string'
        ]);

        $user = User::findOrFail($id);

        $user->update([
            'name'  => $request->name,

            'email' => $request->email,

            'role'  => $request->role,
        ]);

        return response()->json([
            'message' => 'User berhasil diupdate',

            'user' => $user
        ]);
    }

    // =========================
    // DELETE USER
    // =========================
    public function deleteUser($id)
    {
        $user = User::findOrFail($id);

        $user->delete();

        return response()->json([
            'message' => 'User berhasil dihapus'
        ]);
    }

    // =========================
    // GET UPLOADS
    // =========================
    public function uploads()
    {
        $uploads = Upload::with('user')
            ->latest()
            ->get()
            ->map(function ($upload) {

                return [
                    'id' => $upload->id,

                    'user' => [
                        'id'   => $upload->user->id ?? null,
                        'name' => $upload->user->name ?? '-',
                    ],

                    'file_name' => $upload->file_name ?? '-',

                    // 🔥 FIX VIEW FILE
                    'file_path' => asset(
                        'storage/' . $upload->file_path
                    ),

                    'type' => $upload->type ?? '-',

                    'created_at' => $upload->created_at
                        ->format('d M Y H:i'),
                ];
            });

        return response()->json($uploads);
    }

    // =========================
    // DELETE UPLOAD
    // =========================
    public function deleteUpload($id)
    {
        $upload = Upload::findOrFail($id);

        // 🔥 HAPUS FILE STORAGE
        if (
            $upload->file_path &&
            Storage::disk('public')->exists($upload->file_path)
        ) {
            Storage::disk('public')
                ->delete($upload->file_path);
        }

        // 🔥 HAPUS DATABASE
        $upload->delete();

        return response()->json([
            'message' => 'Upload berhasil dihapus'
        ]);
    }
}