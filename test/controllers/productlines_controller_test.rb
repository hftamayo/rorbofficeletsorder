require "test_helper"

class ProductlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productline = productlines(:one)
  end

  test "should get index" do
    get productlines_url
    assert_response :success
  end

  test "should get new" do
    get new_productline_url
    assert_response :success
  end

  test "should create productline" do
    assert_difference('Productline.count') do
      post productlines_url, params: { productline: {  } }
    end

    assert_redirected_to productline_url(Productline.last)
  end

  test "should show productline" do
    get productline_url(@productline)
    assert_response :success
  end

  test "should get edit" do
    get edit_productline_url(@productline)
    assert_response :success
  end

  test "should update productline" do
    patch productline_url(@productline), params: { productline: {  } }
    assert_redirected_to productline_url(@productline)
  end

  test "should destroy productline" do
    assert_difference('Productline.count', -1) do
      delete productline_url(@productline)
    end

    assert_redirected_to productlines_url
  end
end
