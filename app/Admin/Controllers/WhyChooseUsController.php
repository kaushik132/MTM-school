<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\WhyChooseUs;

class WhyChooseUsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Why Choose Us';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WhyChooseUs());

        $grid->column('image', __('Image'))->image(url('uploads'), 100, 100);
        $grid->column('alt', __('Alt'));
        $grid->column('name', __('Name'));
        $grid->column('content', __('Content'));
       

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
        $show = new Show(WhyChooseUs::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'));
        $show->field('alt', __('Alt'));
        $show->field('name', __('Name'));
        $show->field('content', __('Content'));
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
        $form = new Form(new WhyChooseUs());

        $form->image('image', __('Image'));
        $form->text('alt', __('Alt'));
        $form->text('name', __('Name'));
        $form->textarea('content', __('Content'));

        return $form;
    }
}
