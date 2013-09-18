require 'test_helper'

class Admin::QuestionTypesControllerTest < ActionController::TestCase
  setup do
    @admin_question_type = admin_question_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_question_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_question_type" do
    assert_difference('Admin::QuestionType.count') do
      post :create, admin_question_type: { field_type_id: @admin_question_type.field_type_id, name: @admin_question_type.name, no_of_choices: @admin_question_type.no_of_choices }
    end

    assert_redirected_to admin_question_type_path(assigns(:admin_question_type))
  end

  test "should show admin_question_type" do
    get :show, id: @admin_question_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_question_type
    assert_response :success
  end

  test "should update admin_question_type" do
    put :update, id: @admin_question_type, admin_question_type: { field_type_id: @admin_question_type.field_type_id, name: @admin_question_type.name, no_of_choices: @admin_question_type.no_of_choices }
    assert_redirected_to admin_question_type_path(assigns(:admin_question_type))
  end

  test "should destroy admin_question_type" do
    assert_difference('Admin::QuestionType.count', -1) do
      delete :destroy, id: @admin_question_type
    end

    assert_redirected_to admin_question_types_path
  end
end
