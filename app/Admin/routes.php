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
    $router->resource('teachers', TeacherController::class);
    $router->resource('quick-facts', QuickFactsController::class);
    $router->resource('why-choose-uses', WhyChooseUsController::class);
    $router->resource('faqs', FaqController::class);
    $router->resource('contacts', ContactController::class);
    $router->resource('application-forms', ApplicationFormController::class);
    $router->resource('seos', SeoController::class);
    $router->resource('class-models', ClassContoller::class);
    $router->resource('elibraries', ElibraryController::class);
    $router->resource('admission-procedures', AdmissionProcedureController::class);
    $router->resource('blog-categories', BlogCategoryController::class);
    $router->resource('blogs', BlogController::class);
    $router->resource('fees-structures', FeesStructureController::class);
    $router->resource('beyond-academics', BeyondAcademicController::class);


});
