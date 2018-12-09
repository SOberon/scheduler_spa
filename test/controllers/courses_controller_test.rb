require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { credit_hours: @course.credit_hours, department: @course.department, name: "Name", number: 999 } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { credit_hours: @course.credit_hours, department: @course.department, name: @course.name, number: @course.number } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end

  test "shouldn't find a missing course" do
    assert Course.where("name like?", "Cheese").length == 0
  end

  test "should find course from the fixture" do
    assert Course.where("name like ?", "MyString").length == 2
  end

  test "searches always return 200" do
    get search_courses_url, params: { search: "Cheese" }
    assert_equal 200, status
  end

  test "should find myString" do
    get search_courses_url, params: {search: "MyString"}
    assert_select 'td', 'MyString'
  end

  test "should not find notMyString" do
    get search_courses_url, params: {search: "notMyString"}
    assert_select 'td', 'false'
  end
end
