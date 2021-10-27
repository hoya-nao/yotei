require "application_system_test_case"

class TamesisTest < ApplicationSystemTestCase
  setup do
    @tamesi = tamesis(:one)
  end

  test "visiting the index" do
    visit tamesis_url
    assert_selector "h1", text: "Tamesis"
  end

  test "creating a Tamesi" do
    visit tamesis_url
    click_on "New Tamesi"

    fill_in "Address", with: @tamesi.address
    fill_in "Category", with: @tamesi.category_id
    fill_in "Name", with: @tamesi.name
    click_on "Create Tamesi"

    assert_text "Tamesi was successfully created"
    click_on "Back"
  end

  test "updating a Tamesi" do
    visit tamesis_url
    click_on "Edit", match: :first

    fill_in "Address", with: @tamesi.address
    fill_in "Category", with: @tamesi.category_id
    fill_in "Name", with: @tamesi.name
    click_on "Update Tamesi"

    assert_text "Tamesi was successfully updated"
    click_on "Back"
  end

  test "destroying a Tamesi" do
    visit tamesis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tamesi was successfully destroyed"
  end
end
