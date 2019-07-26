require "application_system_test_case"

class DangersTest < ApplicationSystemTestCase
  setup do
    @danger = dangers(:one)
  end

  test "visiting the index" do
    visit dangers_url
    assert_selector "h1", text: "Dangers"
  end

  test "creating a Danger" do
    visit dangers_url
    click_on "New Danger"

    fill_in "Description", with: @danger.description
    fill_in "First", with: @danger.first
    fill_in "Last", with: @danger.last
    click_on "Create Danger"

    assert_text "Danger was successfully created"
    click_on "Back"
  end

  test "updating a Danger" do
    visit dangers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @danger.description
    fill_in "First", with: @danger.first
    fill_in "Last", with: @danger.last
    click_on "Update Danger"

    assert_text "Danger was successfully updated"
    click_on "Back"
  end

  test "destroying a Danger" do
    visit dangers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Danger was successfully destroyed"
  end
end
