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

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user()->orderBy('users.id', 'DESC')->paginate(3);
});*/
Route::middleware('auth:api')->post('/cart', 'Api\ProductController@cart');
Route::middleware('auth:api')->get('/promocode', 'Api\ProductController@promocode');
Route::middleware('auth:api')->post('/addtocart', 'Api\ProductController@addtocart');
Route::middleware('auth:api')->post('/increaseCartQty', 'Api\ProductController@increaseCartQty');
Route::middleware('auth:api')->post('/decreaseCartQty', 'Api\ProductController@decreaseCartQty');
Route::middleware('auth:api')->post('/removeCartProduct', 'Api\ProductController@removeCartProduct');
Route::middleware('auth:api')->post('/applypromo', 'Api\ProductController@applypromo');

Route::post('/register', 'Api\AuthController@register');
Route::post('/login', 'Api\AuthController@login');
Route::get('/productDetails', 'Api\ProductController@getProduct');
