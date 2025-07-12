<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'api/tokobuku'], function () use ($router) {
    $router->get('/', 'TokobukuController@index');         // Get all
    $router->get('{id}', 'TokobukuController@show');       // Get by ID
    $router->post('/', 'TokobukuController@store');        // Create
    $router->put('{id}', 'TokobukuController@update');     // Update
    $router->delete('{id}', 'TokobukuController@destroy'); // Delete
});


