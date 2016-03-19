require 'test_helper'

class CoursesubjectsControllerTest < ActionController::TestCase
  setup do
    @coursesubject = coursesubjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coursesubjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coursesubject" do
    assert_difference('Coursesubject.count') do
      post :create, coursesubject: {  }
    end

    assert_redirected_to coursesubject_path(assigns(:coursesubject))
  end

  test "should show coursesubject" do
    get :show, id: @coursesubject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coursesubject
    assert_response :success
  end

  test "should update coursesubject" do
    patch :update, id: @coursesubject, coursesubject: {  }
    assert_redirected_to coursesubject_path(assigns(:coursesubject))
  end

  test "should destroy coursesubject" do
    assert_difference('Coursesubject.count', -1) do
      delete :destroy, id: @coursesubject
    end

    assert_redirected_to coursesubjects_path
  end
end
