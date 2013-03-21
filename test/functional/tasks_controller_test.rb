require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get destory" do
    get :destory
    assert_response :success
  end

end
