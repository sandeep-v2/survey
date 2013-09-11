require 'test_helper'

class Admin::SurveysControllerTest < ActionController::TestCase
  setup do
    @admin_survey = admin_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_survey" do
    assert_difference('Admin::Survey.count') do
      post :create, admin_survey: { description: @admin_survey.description, title: @admin_survey.title, user_id: @admin_survey.user_id }
    end

    assert_redirected_to admin_survey_path(assigns(:admin_survey))
  end

  test "should show admin_survey" do
    get :show, id: @admin_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_survey
    assert_response :success
  end

  test "should update admin_survey" do
    put :update, id: @admin_survey, admin_survey: { description: @admin_survey.description, title: @admin_survey.title, user_id: @admin_survey.user_id }
    assert_redirected_to admin_survey_path(assigns(:admin_survey))
  end

  test "should destroy admin_survey" do
    assert_difference('Admin::Survey.count', -1) do
      delete :destroy, id: @admin_survey
    end

    assert_redirected_to admin_surveys_path
  end
end
