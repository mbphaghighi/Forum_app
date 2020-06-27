<?php

namespace App\Http\Controllers\api;

use App\Models\Channel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ChannelController extends Controller
{
    public function index(){
        $channels=Channel::get();
        return $channels;
    }

    public function threads(Channel $channel){
        $threads=$channel->threads;
        return $threads;
    }
}
