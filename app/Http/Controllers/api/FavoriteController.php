<?php

namespace App\Http\Controllers\api;

use App\Models\Reply;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FavoriteController extends Controller
{
    public function store(Reply $reply){

        $reply->favorites()->create([
            'user_id'=>auth()->id(),
            'favorite_id'=>$reply->id,
            'favorite_type'=>get_class($reply)
        ]);
        return [
            'status'=>true,
            'message'=>'You like this reply!'
        ];

    }
}
