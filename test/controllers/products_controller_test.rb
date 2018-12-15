require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_product_url
    assert_response :success
  end

  # test "should get create" do
  #   get create_products_url
  #   assert_response :success
  # end

end
