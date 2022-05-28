require "application_system_test_case"

class ProductcatalogsTest < ApplicationSystemTestCase
  setup do
    @productcatalog = productcatalogs(:one)
  end

  test "visiting the index" do
    visit productcatalogs_url
    assert_selector "h1", text: "Productcatalogs"
  end

  test "creating a Productcatalog" do
    visit productcatalogs_url
    click_on "New Productcatalog"

    fill_in "Prodlines", with: @productcatalog.Prodlines
    fill_in "Prodprovider", with: @productcatalog.Prodprovider
    fill_in "Description", with: @productcatalog.description
    check "Isavailable" if @productcatalog.isavailable
    fill_in "Maxquantity", with: @productcatalog.maxquantity
    fill_in "Minquality", with: @productcatalog.minquality
    fill_in "Name", with: @productcatalog.name
    fill_in "References", with: @productcatalog.references
    fill_in "String", with: @productcatalog.string
    fill_in "‘price", with: @productcatalog.‘price
    click_on "Create Productcatalog"

    assert_text "Productcatalog was successfully created"
    click_on "Back"
  end

  test "updating a Productcatalog" do
    visit productcatalogs_url
    click_on "Edit", match: :first

    fill_in "Prodlines", with: @productcatalog.Prodlines
    fill_in "Prodprovider", with: @productcatalog.Prodprovider
    fill_in "Description", with: @productcatalog.description
    check "Isavailable" if @productcatalog.isavailable
    fill_in "Maxquantity", with: @productcatalog.maxquantity
    fill_in "Minquality", with: @productcatalog.minquality
    fill_in "Name", with: @productcatalog.name
    fill_in "References", with: @productcatalog.references
    fill_in "String", with: @productcatalog.string
    fill_in "‘price", with: @productcatalog.‘price
    click_on "Update Productcatalog"

    assert_text "Productcatalog was successfully updated"
    click_on "Back"
  end

  test "destroying a Productcatalog" do
    visit productcatalogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Productcatalog was successfully destroyed"
  end
end
