require 'test_helper'

class SubscriptorsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get subscriptors_url
    # get :index
    assert_response :success

    # /subscriptors/index
    # http://localhost:3000/subscriptors/index
    # http://example.com/subscriptors/index
  end

  test "should get new" do
    # get subscriptors_new_url
    get new_subscriptor_url
    assert_response :success
  end
  #
  # test "should get create" do
  #   get subscriptors_create_url
  #   assert_response :success
  # end

  test "should create a new subscriptor" do
    assert_difference('Subscriptor.count') do
      post subscriptors_url, params: { subscriptor: { email: "test@email.com", name: "test name" } }
    end

    assert_redirected_to posts_path
  end

end
