<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'WelcomeController@index');

Route::get('home', 'HomeController@index');

// Route::get('login','HomeController@Get_Login');

// Route::post('login','HomeController@Do_Login');

Route::get('dash','DashboardController@index');
Route::get('test','FakeController@test');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

Route::get('student','StudentController@index');


Route::resource('articles','ArticlesController');
Route::resource('fake','FakeController');


//file upload tesst routes
Route::get('name','NameController@index');
Route::post('name','NameController@post');
// file upload test route ends here