<?php

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


/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('admin-users')->name('admin-users/')->group(static function() {
            Route::get('/',                                             'AdminUsersController@index')->name('index');
            Route::get('/create',                                       'AdminUsersController@create')->name('create');
            Route::post('/',                                            'AdminUsersController@store')->name('store');
            Route::get('/{adminUser}/impersonal-login',                 'AdminUsersController@impersonalLogin')->name('impersonal-login');
            Route::get('/{adminUser}/edit',                             'AdminUsersController@edit')->name('edit');
            Route::post('/{adminUser}',                                 'AdminUsersController@update')->name('update');
            Route::delete('/{adminUser}',                               'AdminUsersController@destroy')->name('destroy');
            Route::get('/{adminUser}/resend-activation',                'AdminUsersController@resendActivationEmail')->name('resendActivationEmail');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::get('/profile',                                      'ProfileController@editProfile')->name('edit-profile');
        Route::post('/profile',                                     'ProfileController@updateProfile')->name('update-profile');
        Route::get('/password',                                     'ProfileController@editPassword')->name('edit-password');
        Route::post('/password',                                    'ProfileController@updatePassword')->name('update-password');
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('lugares')->name('lugares/')->group(static function() {
            Route::get('/',                                             'LugaresController@index')->name('index');
            Route::get('/create',                                       'LugaresController@create')->name('create');
            Route::post('/',                                            'LugaresController@store')->name('store');
            Route::get('/{lugare}/edit',                                'LugaresController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'LugaresController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{lugare}',                                    'LugaresController@update')->name('update');
            Route::delete('/{lugare}',                                  'LugaresController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('viajes')->name('viajes/')->group(static function() {
            Route::get('/',                                             'ViajesController@index')->name('index');
            Route::get('/create',                                       'ViajesController@create')->name('create');
            Route::post('/',                                            'ViajesController@store')->name('store');
            Route::get('/{viaje}/edit',                                 'ViajesController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'ViajesController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{viaje}',                                     'ViajesController@update')->name('update');
            Route::delete('/{viaje}',                                   'ViajesController@destroy')->name('destroy');
        });
    });
});