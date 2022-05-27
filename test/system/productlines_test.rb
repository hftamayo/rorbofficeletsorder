require "application_system_test_case"

class ProductlinesTest < ApplicationSystemTestCase
  setup do
    @productline = productlines(:one)
  end

  test "visiting the index" do
    visit productlines_url
    assert_selector "h1", text: "Productlines"
  end

  test "creating a Productline" do
    visit productlines_url
    click_on "New Productline"

    click_on "Create Productline"

    assert_text "Productline was successfully created"
    click_on "Back"
  end

  test "updating a Productline" do
    visit productlines_url
    click_on "Edit", match: :first

    click_on "Update Productline"

    assert_text "Productline was successfully updated"
    click_on "Back"
  end

  test "destroying a Productline" do
    visit productlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Productline was successfully destroyed"
  end
end
