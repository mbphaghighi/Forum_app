<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['namespace'=>'api'],function(){
    Route::group(['prefix'=>'user'],function(){
        Route::group(['namespace'=>'User'],function (){
            Route::post('register','RegisterController@Register');
            Route::post('login','LoginController@login');
            Route::get('{user}','ProfileController@show');
        });
    });
    Route::group(['prefix'=>'threads'],function(){
        Route::get('/','ThreadController@index');
        Route::get('{thread}','ThreadController@show');
    });
    Route::group(['prefix' => 'channels'], function () {
        Route::get('/', 'ChannelController@index');
        Route::get('{channel}', 'ChannelController@threads');
    });
});

Route::group(['namespace'=>'api','middleware'=>'auth:api'],function() {
    Route::group(['prefix' => 'threads'], function () {
        Route::post('create', 'ThreadController@create');
        Route::get('{thread}/delete', 'ThreadController@destroy');
        Route::post('{thread}/addreply','ReplyController@store');
    });
    Route::group(['prefix' => 'replies'], function () {
        Route::get('{reply}/delete', 'ReplyController@destroy');
        Route::post('{reply}/update', 'ReplyController@update');
        Route::post('{reply}/addFavorite', 'FavoriteController@store');
    });

});