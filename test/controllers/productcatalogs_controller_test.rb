require "test_helper"

class ProductcatalogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productcatalog = productcatalogs(:one)
  end

  test "should get index" do
    get productcatalogs_url
    assert_response :success
  end

  test "should get new" do
    get new_productcatalog_url
    assert_response :success
  end

  test "should create productcatalog" do
    assert_difference('Productcatalog.count') do
      post productcatalogs_url, params: { productcatalog: { Prodlines: @productcatalog.Prodlines, Prodprovider: @productcatalog.Prodprovider, description: @productcatalog.description, isavailable: @productcatalog.isavailable, maxquantity: @productcatalog.maxquantity, minquality: @productcatalog.minquality, name: @productcatalog.name, references: @productcatalog.references, string: @productcatalog.string, ‘price: @productcatalog.‘price } }
    end

    assert_redirected_to productcatalog_url(Productcatalog.last)
  end

  test "should show productcatalog" do
    get productcatalog_url(@productcatalog)
    assert_response :success
  end

  test "should get edit" do
    get edit_productcatalog_url(@productcatalog)
    assert_response :success
  end

  test "should update productcatalog" do
    patch productcatalog_url(@productcatalog), params: { productcatalog: { Prodlines: @productcatalog.Prodlines, Prodprovider: @productcatalog.Prodprovider, description: @productcatalog.description, isavailable: @productcatalog.isavailable, maxquantity: @productcatalog.maxquantity, minquality: @productcatalog.minquality, name: @productcatalog.name, references: @productcatalog.references, string: @productcatalog.string, ‘price: @productcatalog.‘price } }
    assert_redirected_to productcatalog_url(@productcatalog)
  end

  test "should destroy productcatalog" do
    assert_difference('Productcatalog.count', -1) do
      delete productcatalog_url(@productcatalog)
    end

    assert_redirected_to productcatalogs_url
  end
end
