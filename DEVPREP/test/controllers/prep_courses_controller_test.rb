require 'test_helper'

class PrepCoursesControllerTest < ActionController::TestCase
  setup do
    @prep_course = prep_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prep_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prep_course" do
    assert_difference('PrepCourse.count') do
      post :create, prep_course: { description: @prep_course.description, text: @prep_course.text, title: @prep_course.title }
    end

    assert_redirected_to prep_course_path(assigns(:prep_course))
  end

  test "should show prep_course" do
    get :show, id: @prep_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prep_course
    assert_response :success
  end

  test "should update prep_course" do
    patch :update, id: @prep_course, prep_course: { description: @prep_course.description, text: @prep_course.text, title: @prep_course.title }
    assert_redirected_to prep_course_path(assigns(:prep_course))
  end

  test "should destroy prep_course" do
    assert_difference('PrepCourse.count', -1) do
      delete :destroy, id: @prep_course
    end

    assert_redirected_to prep_courses_path
  end
end
