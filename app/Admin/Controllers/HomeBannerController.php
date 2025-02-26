<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\HomeBanner;

class HomeBannerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'HomeBanner';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new HomeBanner());


        $grid->column('image', __('Image'))->image(url('/uploads/'),100,150);
        $grid->column('title', __('Title'));





        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(HomeBanner::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('short_description', __('Short description'));
        $show->field('image', __('Image'));
        $show->field('about_more', __('About more'));
        $show->field('learn_more', __('Learn more'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new HomeBanner());

        $form->ckeditor('title', __('Title'));
        $form->textarea('short_description', __('Short description'));
        $form->image('image', __('Image'));

    
        $form->url('about_more', __('About more'));
        $form->url('learn_more', __('Learn more'));

        return $form;
    }
}
