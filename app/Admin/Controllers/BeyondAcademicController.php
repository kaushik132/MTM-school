<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\BeyondAcademic;

class BeyondAcademicController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'BeyondAcademic';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BeyondAcademic());

  
        $grid->column('banner_image', __('Banner image'))->image(url('/uploads/'), 100, 150);
       
        $grid->column('image', __('Image'))->image(url('/uploads/'), 100, 150);
     
        $grid->column('created_at', __('Created at'))->display(function ($createdAt) {
            return \Carbon\Carbon::parse($createdAt)->format('d M, Y');
        });
        


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
        $show = new Show(BeyondAcademic::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('banner_image', __('Banner image'));
        $show->field('banner_alt', __('Banner alt'));
        $show->field('image', __('Image'));
        $show->field('alt', __('Alt'));
        $show->field('heading_title', __('Heading title'));
        $show->field('vidoe_link', __('Vidoe link'));
        $show->field('contant', __('Contant'));
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
        $form = new Form(new BeyondAcademic());

        $form->image('banner_image', __('Banner image'));
        $form->text('banner_alt', __('Banner alt'));
        $form->image('image', __('Image'));
        $form->text('alt', __('Alt'));
        $form->text('heading_title', __('Heading title'));
        $form->hidden('slug');

        $form->saving(function (Form $form) {

           $form->slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-',trim($form->heading_title)));
        });
        $form->image('video_image', __('Video Image'));
        $form->url('vidoe_link', __('Vidoe link'));
        $form->ckeditor('contant', __('Contant'));

        return $form;
    }
}
