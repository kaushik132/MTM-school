<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('home-banners', HomeBannerController::class);
    $router->resource('facilities', FacilityController::class);
    $router->resource('gallery-images', GalleryImageController::class);
    $router->resource('gallery-videos', GalleryVideoController::class);
    $router->resource('activities', ActivitiesController::class);

});
