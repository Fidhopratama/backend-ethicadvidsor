<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;
class Upload extends Model
{
    protected $fillable = [
        'user_id',
        'file_name',
        'file_path',
        'type',
    ];

    protected $with = ['user']; 

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}