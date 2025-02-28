<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\ApplicationForm;

class ApplicationFormController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Application Form';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ApplicationForm());

    
        $grid->column('fname', __('Fname Name'));
        $grid->column('lname', __('Last Name'));
        $grid->column('father_name', __('Father name'));
        $grid->column('mother_name', __('Mother name'));
        $grid->column('contact_no', __('Contact no'));
        $grid->column('email', __('Email'));
        $grid->column('present_address', __('Present Address'));
        $grid->column('dob', __('Dob'));
        $grid->column('gender', __('Gender'));
        $grid->column('desire_class', __('Desire Class'));
        $grid->column('present_school', __('Present School'));
        $grid->column('student_photo', __('Student Photo'))->image(url(''), 100, 150);
    

        $grid->column('birth_document', __('Birth Document'))->display(function ($document) {
            $url = asset('' . $document);
            return "<a href='{$url}' target='_blank'>Download Birth Document</a>";
        });
        
        $grid->column('created_at', __('Created At'))->display(function ($date) {
            return \Carbon\Carbon::parse($date)->format('d-m-Y'); // Output: 28-02-2025
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
        $show = new Show(ApplicationForm::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('fname', __('Fname'));
        $show->field('lname', __('Lname'));
        $show->field('father_name', __('Father name'));
        $show->field('mother_name', __('Mother name'));
        $show->field('contact_no', __('Contact no'));
        $show->field('email', __('Email'));
        $show->field('present_address', __('Present address'));
        $show->field('dob', __('Dob'));
        $show->field('gender', __('Gender'));
        $show->field('desire_class', __('Desire class'));
        $show->field('present_school', __('Present school'));
        $show->field('student_photo', __('Student photo'));
        $show->field('birth_document', __('Birth document'));
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
        $form = new Form(new ApplicationForm());

        $form->text('fname', __('Fname'));
        $form->text('lname', __('Lname'));
        $form->text('father_name', __('Father name'));
        $form->text('mother_name', __('Mother name'));
        $form->text('contact_no', __('Contact no'));
        $form->email('email', __('Email'));
        $form->text('present_address', __('Present address'));
        $form->text('dob', __('Dob'));
        $form->text('gender', __('Gender'));
        $form->text('desire_class', __('Desire class'));
        $form->text('present_school', __('Present school'));
        $form->image('student_photo', __('Student photo'));
        $form->image('birth_document', __('Birth document'));

        return $form;
    }
}
