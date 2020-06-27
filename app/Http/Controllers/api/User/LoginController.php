<?php

namespace App\Http\Controllers\api\User;

use App\Http\Requests\api\User\UserLoginRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
   public function login(UserLoginRequest $request){

       $credentials=$request->only('email', 'password');
       if(auth::attempt($credentials)){
           $user=auth()->user();
           return [
               'status'=>true,
               'message'=>'The login is successful',
               'token'=> $user->createToken('create')->accessToken
           ];

       }
       else{
           return [
               'status'=>false,
               'message'=>'Your email or password is not correct'
           ];
       }

   }
}
