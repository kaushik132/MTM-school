<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Seo;

class SeoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Seo';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Seo());

        $grid->column('id', __('Id'));
        $grid->column('seo_home_title', __('Seo home title'));
        $grid->column('seo_home_des', __('Seo home des'));
        $grid->column('seo_home_key', __('Seo home key'));
        $grid->column('seo_about_title', __('Seo about title'));
        $grid->column('seo_about_des', __('Seo about des'));
        $grid->column('seo_about_key', __('Seo about key'));
        $grid->column('seo_contact_title', __('Seo contact title'));
        $grid->column('seo_contact_des', __('Seo contact des'));
        $grid->column('seo_contact_key', __('Seo contact key'));
        $grid->column('seo_activities_title', __('Seo activities title'));
        $grid->column('seo_activities_des', __('Seo activities des'));
        $grid->column('seo_activities_key', __('Seo activities key'));
        $grid->column('seo_addmission_title', __('Seo addmission title'));
        $grid->column('seo_addmission_des', __('Seo addmission des'));
        $grid->column('seo_addmission_key', __('Seo addmission key'));
        $grid->column('seo_application_title', __('Seo application title'));
        $grid->column('seo_application_des', __('Seo application des'));
        $grid->column('seo_application_key', __('Seo application key'));
        $grid->column('seo_facility_title', __('Seo facility title'));
        $grid->column('seo_facility_des', __('Seo facility des'));
        $grid->column('seo_facility_key', __('Seo facility key'));
        $grid->column('seo_fees_title', __('Seo fees title'));
        $grid->column('seo_fees_des', __('Seo fees des'));
        $grid->column('seo_fees_key', __('Seo fees key'));
        $grid->column('seo_gallery_title', __('Seo gallery title'));
        $grid->column('seo_gallery_des', __('Seo gallery des'));
        $grid->column('seo_gallery_key', __('Seo gallery key'));
        $grid->column('seo_user_login_title', __('Seo user login title'));
        $grid->column('seo_user_login_des', __('Seo user login des'));
        $grid->column('seo_user_login_key', __('Seo user login key'));
        $grid->column('seo_user_signup_title', __('Seo user signup title'));
        $grid->column('seo_user_signup_des', __('Seo user signup des'));
        $grid->column('seo_user_signup_key', __('Seo user signup key'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Seo::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('seo_home_title', __('Seo home title'));
        $show->field('seo_home_des', __('Seo home des'));
        $show->field('seo_home_key', __('Seo home key'));
        $show->field('seo_about_title', __('Seo about title'));
        $show->field('seo_about_des', __('Seo about des'));
        $show->field('seo_about_key', __('Seo about key'));
        $show->field('seo_contact_title', __('Seo contact title'));
        $show->field('seo_contact_des', __('Seo contact des'));
        $show->field('seo_contact_key', __('Seo contact key'));
        $show->field('seo_activities_title', __('Seo activities title'));
        $show->field('seo_activities_des', __('Seo activities des'));
        $show->field('seo_activities_key', __('Seo activities key'));
        $show->field('seo_addmission_title', __('Seo addmission title'));
        $show->field('seo_addmission_des', __('Seo addmission des'));
        $show->field('seo_addmission_key', __('Seo addmission key'));
        $show->field('seo_application_title', __('Seo application title'));
        $show->field('seo_application_des', __('Seo application des'));
        $show->field('seo_application_key', __('Seo application key'));
        $show->field('seo_facility_title', __('Seo facility title'));
        $show->field('seo_facility_des', __('Seo facility des'));
        $show->field('seo_facility_key', __('Seo facility key'));
        $show->field('seo_fees_title', __('Seo fees title'));
        $show->field('seo_fees_des', __('Seo fees des'));
        $show->field('seo_fees_key', __('Seo fees key'));
        $show->field('seo_gallery_title', __('Seo gallery title'));
        $show->field('seo_gallery_des', __('Seo gallery des'));
        $show->field('seo_gallery_key', __('Seo gallery key'));
        $show->field('seo_user_login_title', __('Seo user login title'));
        $show->field('seo_user_login_des', __('Seo user login des'));
        $show->field('seo_user_login_key', __('Seo user login key'));
        $show->field('seo_user_signup_title', __('Seo user signup title'));
        $show->field('seo_user_signup_des', __('Seo user signup des'));
        $show->field('seo_user_signup_key', __('Seo user signup key'));
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
        $form = new Form(new Seo());

        $form->text('seo_home_title', __('Seo home title'));
        $form->textarea('seo_home_des', __('Seo home des'));
        $form->textarea('seo_home_key', __('Seo home key'));
        $form->text('seo_about_title', __('Seo about title'));
        $form->textarea('seo_about_des', __('Seo about des'));
        $form->textarea('seo_about_key', __('Seo about key'));
        $form->text('seo_contact_title', __('Seo contact title'));
        $form->textarea('seo_contact_des', __('Seo contact des'));
        $form->textarea('seo_contact_key', __('Seo contact key'));
        $form->text('seo_activities_title', __('Seo activities title'));
        $form->textarea('seo_activities_des', __('Seo activities des'));
        $form->textarea('seo_activities_key', __('Seo activities key'));
        $form->text('seo_addmission_title', __('Seo addmission title'));
        $form->textarea('seo_addmission_des', __('Seo addmission des'));
        $form->textarea('seo_addmission_key', __('Seo addmission key'));
        $form->text('seo_application_title', __('Seo application title'));
        $form->textarea('seo_application_des', __('Seo application des'));
        $form->textarea('seo_application_key', __('Seo application key'));
        $form->text('seo_facility_title', __('Seo facility title'));
        $form->textarea('seo_facility_des', __('Seo facility des'));
        $form->textarea('seo_facility_key', __('Seo facility key'));
        $form->text('seo_fees_title', __('Seo fees title'));
        $form->textarea('seo_fees_des', __('Seo fees des'));
        $form->textarea('seo_fees_key', __('Seo fees key'));
        $form->text('seo_gallery_title', __('Seo gallery title'));
        $form->textarea('seo_gallery_des', __('Seo gallery des'));
        $form->textarea('seo_gallery_key', __('Seo gallery key'));
        $form->text('seo_user_login_title', __('Seo user login title'));
        $form->textarea('seo_user_login_des', __('Seo user login des'));
        $form->textarea('seo_user_login_key', __('Seo user login key'));
        $form->text('seo_user_signup_title', __('Seo user signup title'));
        $form->textarea('seo_user_signup_des', __('Seo user signup des'));
        $form->textarea('seo_user_signup_key', __('Seo user signup key'));
        $form->text('seo_admission_procedure_title', __('Seo Admission Procedure title'));
        $form->textarea('seo_admission_procedure_des', __('Seo Admission Procedure des'));
        $form->textarea('seo_admission_procedure_key', __('Seo Admission Procedure key'));
        // $form->text('seo_beyond_academic_title', __('Seo Beyond Academic title'));
        // $form->textarea('seo_beyond_academic_des', __('Seo Beyond Academic des'));
        // $form->textarea('seo_beyond_academic_key', __('Seo Beyond Academic key'));
        // $form->text('seo_blogs_title', __('Seo Blogs title'));
        // $form->textarea('seo_blogs_des', __('Seo Blogs des'));
        // $form->textarea('seo_blogs_key', __('Seo Blogs key'));
        $form->text('seo_e_labrary_title', __('Seo E Labrary title'));
        $form->textarea('seo_e_labrary_des', __('Seo E Labrary des'));
        $form->textarea('seo_e_labraby_key', __('Seo E Labrary key'));

        $form->text('seo_title_blog', __('Seo Blog title'));
        $form->textarea('seo_des_blog', __('Seo Blog des'));
        $form->textarea('seo_key_blog', __('Seo Blog key'));

        $form->text('beyond_academic_title', __('Seo Beyound Academic title'));
        $form->textarea('beyond_academic_des', __('Seo Beyound Academic des'));
        $form->textarea('beyond_academic_key', __('Seo Beyound Academic key'));


        return $form;
    }
}
