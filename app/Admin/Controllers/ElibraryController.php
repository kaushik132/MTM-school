<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Elibrary;
use \App\Models\ClassModel;

class ElibraryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Elibrary';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Elibrary());

   
        $grid->column('title', __('Title'));
        $grid->column('class.name', __('Category id'));
        $grid->column('image', __('Image'))->image(url('uploads'), 100, 100);
       

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
        $show = new Show(Elibrary::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('category_id', __('Category id'));
        $show->field('image', __('Image'));
      
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
        $form = new Form(new Elibrary());
        $form->select('category_id',__('Category'))->options(ClassModel::pluck('name', 'id'))->default(null)->rules('required');
        $form->text('title', __('Title'));

        $form->hidden('slug');

        $form->saving(function (Form $form) {

           $form->slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-',trim($form->name)));
        });
       
        $form->image('image', __('Image'));
        $form->file('pdf', __('PDF File'));

       

        return $form;
    }
}
