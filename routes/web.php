<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::Routes();
Route::get('/', [ 'as' => 'product', 'uses' => 'App\AppMainController@product']);
//Route::get('/', [ 'as' => 'login', 'uses' => 'App\AppController@login'])->middleware('guest');
Route::get('/login', [ 'as' => 'login', 'uses' => 'App\AppController@login'])->middleware('guest');;
Route::get('/register', 'App\AppController@register')->middleware('guest');;
Route::post('/loginData', 'App\AppController@loginPost');
Route::post('/registerData', 'App\AppController@registerPost');
Route::group(['middleware' => ['web', 'auth:CustomAuth']], function () {

    Route::get('/home', [ 'as' => 'home', 'uses' => 'App\AppMainController@home']);
    Route::get('/logout', [ 'as' => 'logout', 'uses' => 'App\AppController@logout']);
    Route::get('/cart', [ 'as' => 'cart', 'uses' => 'App\AppMainController@cart']);
    Route::get('/promocode', [ 'as' => 'promocode', 'uses' => 'App\AppMainController@promocode']);
    Route::get('/decreaseproductqty/{id}', [ 'as' => 'decreaseproductqty', 'uses' => 'App\AppMainController@decreaseproductqty']);
    Route::get('/increaseproductqty/{id}', [ 'as' => 'increaseproductqty', 'uses' => 'App\AppMainController@increaseproductqty']);
    Route::get('/removecartproduct/{id}', [ 'as' => 'removecartproduct', 'uses' => 'App\AppMainController@removecartproduct']);
    Route::get('/addtocart/{id}', [ 'as' => 'addtocart', 'uses' => 'App\AppMainController@addtocart']);
    Route::post('/checkout', [ 'as' => 'checkout', 'uses' => 'App\AppMainController@checkout']);
    Route::post('/promo', [ 'as' => 'promo', 'uses' => 'App\AppMainController@applypromo']);

});

//Route::get('/home', 'App\AppMainController@home');

