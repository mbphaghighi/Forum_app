<?php

namespace App\Http\Controllers\api\User;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProfileController extends Controller
{
    public function show(User $user){
        $activities=$user->activity()->with('subject')->get();
        return [
            'profile_user'=>$user,
            'threads'=>$user->threads(),
            'activities' =>$activities
        ];
    }
}
