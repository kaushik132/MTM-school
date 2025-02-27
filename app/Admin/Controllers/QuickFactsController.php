<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\QuickFacts;

class QuickFactsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'QuickFacts';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new QuickFacts());


        $grid->column('student', __('Students Number'));
        $grid->column('teacher', __('Teachers Number'));
        $grid->column('win_awards', __('Win awards Number'));
        $grid->column('classes', __('Classes Number'));
 

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
        $show = new Show(QuickFacts::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('student', __('Student'));
        $show->field('teacher', __('Teacher'));
        $show->field('win_awards', __('Win awards'));
        $show->field('classes', __('Classes'));
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
        $form = new Form(new QuickFacts());

        $form->number('student', __('Students Number'));
        $form->number('teacher', __('Teachers Number' ));
        $form->number('win_awards', __('Win awards Number'));
        $form->number('classes', __('Classes Number'));

        return $form;
    }
}
