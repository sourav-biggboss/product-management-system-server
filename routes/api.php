<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\NotificationController;
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

Route::controller(AuthController::class)->group(function () {
    Route::post('login', 'login');
    Route::post('register', 'register');
    Route::post('logout', 'logout');
    Route::post('refresh', 'refresh');
});

Route::middleware('auth:api')->group(function (){

    Route::prefix('profile')->name('profile.')->controller(ProfileController::class)->group(function (){
        Route::get('edit/{id?}','edit')->whereNumber('id');
        Route::put('update/{id?}','update')->whereNumber('id');
        Route::delete('delete/{id?}','destory')->whereNumber('id');
    });

    Route::prefix('department')->name('department.')->controller(DepartmentController::class)->group(function (){
        Route::get('index/{id?}','index')->whereNumber('id')->name('index');
        Route::post('create','create')->name('create');
        Route::put('update/{id}','update')->whereNumber('id')->name('update');
        Route::delete('delete/{id}','destroy')->whereNumber('id')->name('delete');
    });

    Route::prefix('notification')->name('notification.')->controller(NotificationController::class)->group(function (){
        Route::get('index/{id?}','index')->whereNumber('id')->name('index');
        Route::post('create','create')->name('create');
    });

});