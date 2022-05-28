require "application_system_test_case"

class ProdprovidersTest < ApplicationSystemTestCase
  setup do
    @prodprovider = prodproviders(:one)
  end

  test "visiting the index" do
    visit prodproviders_url
    assert_selector "h1", text: "Prodproviders"
  end

  test "creating a Prodprovider" do
    visit prodproviders_url
    click_on "New Prodprovider"

    fill_in "Contactname", with: @prodprovider.contactname
    check "Isactive" if @prodprovider.isactive
    fill_in "Name", with: @prodprovider.name
    click_on "Create Prodprovider"

    assert_text "Prodprovider was successfully created"
    click_on "Back"
  end

  test "updating a Prodprovider" do
    visit prodproviders_url
    click_on "Edit", match: :first

    fill_in "Contactname", with: @prodprovider.contactname
    check "Isactive" if @prodprovider.isactive
    fill_in "Name", with: @prodprovider.name
    click_on "Update Prodprovider"

    assert_text "Prodprovider was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodprovider" do
    visit prodproviders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodprovider was successfully destroyed"
  end
end
