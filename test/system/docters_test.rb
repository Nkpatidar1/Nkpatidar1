require "application_system_test_case"

class DoctersTest < ApplicationSystemTestCase
  setup do
    @docter = docters(:one)
  end

  test "visiting the index" do
    visit docters_url
    assert_selector "h1", text: "Docters"
  end

  test "creating a Docter" do
    visit docters_url
    click_on "New Docter"

    fill_in "Contect number", with: @docter.contect_number
    fill_in "Email", with: @docter.email
    fill_in "Name", with: @docter.name
    click_on "Create Docter"

    assert_text "Docter was successfully created"
    click_on "Back"
  end

  test "updating a Docter" do
    visit docters_url
    click_on "Edit", match: :first

    fill_in "Contect number", with: @docter.contect_number
    fill_in "Email", with: @docter.email
    fill_in "Name", with: @docter.name
    click_on "Update Docter"

    assert_text "Docter was successfully updated"
    click_on "Back"
  end

  test "destroying a Docter" do
    visit docters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Docter was successfully destroyed"
  end
end
