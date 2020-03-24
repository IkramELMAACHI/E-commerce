<?php

use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use Gloudemans\Shoppingcart\Facades\Cart as GloudemansCart;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

/* product Routes */
Route::get('/boutique', 'ProductController@index')->name('products.index') ;
Route::get('/boutique/{slug}', 'ProductController@show')->name('products.show');
Route::get('/search','ProductController@search')->name('products.search') ;

/* Cart Route*/

Route::get('/panier','CartController@index')->name('cart.index');
Route::post('/panier/ajouter', 'CartController@store')->name('cart.store');
Route::patch('/panier/{rowId}', 'CartController@update')->name('cart.update');
Route::delete('/panier/{rowId}', 'CartController@destroy')->name('cart.destroy');

// Route::get('/videpanier', function(){
//     GloudemansCart::destroy() ;
// }) ;

/*Checkout Rotes*/
Route::get('/paiement', 'CheckoutController@index')->name('checkout.index');
Route::post('/paiement', 'CheckoutController@store')->name('checkout.store');
Route::get('/merci', 'CheckoutController@thankyou')->name('checkout.thankyou');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});