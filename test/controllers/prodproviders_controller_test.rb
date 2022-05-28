require "test_helper"

class ProdprovidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodprovider = prodproviders(:one)
  end

  test "should get index" do
    get prodproviders_url
    assert_response :success
  end

  test "should get new" do
    get new_prodprovider_url
    assert_response :success
  end

  test "should create prodprovider" do
    assert_difference('Prodprovider.count') do
      post prodproviders_url, params: { prodprovider: { contactname: @prodprovider.contactname, isactive: @prodprovider.isactive, name: @prodprovider.name } }
    end

    assert_redirected_to prodprovider_url(Prodprovider.last)
  end

  test "should show prodprovider" do
    get prodprovider_url(@prodprovider)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodprovider_url(@prodprovider)
    assert_response :success
  end

  test "should update prodprovider" do
    patch prodprovider_url(@prodprovider), params: { prodprovider: { contactname: @prodprovider.contactname, isactive: @prodprovider.isactive, name: @prodprovider.name } }
    assert_redirected_to prodprovider_url(@prodprovider)
  end

  test "should destroy prodprovider" do
    assert_difference('Prodprovider.count', -1) do
      delete prodprovider_url(@prodprovider)
    end

    assert_redirected_to prodproviders_url
  end
end
