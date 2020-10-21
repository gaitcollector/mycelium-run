require "application_system_test_case"

class MyceliaTest < ApplicationSystemTestCase
  setup do
    @mycelium = mycelia(:one)
  end

  test "visiting the index" do
    visit mycelia_url
    assert_selector "h1", text: "Mycelia"
  end

  test "creating a Mycelium" do
    visit mycelia_url
    click_on "New Mycelium"

    fill_in "Name", with: @mycelium.name
    click_on "Create Mycelium"

    assert_text "Mycelium was successfully created"
    click_on "Back"
  end

  test "updating a Mycelium" do
    visit mycelia_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mycelium.name
    click_on "Update Mycelium"

    assert_text "Mycelium was successfully updated"
    click_on "Back"
  end

  test "destroying a Mycelium" do
    visit mycelia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mycelium was successfully destroyed"
  end
end
