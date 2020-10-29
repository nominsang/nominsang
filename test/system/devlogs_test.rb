require "application_system_test_case"

class DevlogsTest < ApplicationSystemTestCase
  setup do
    @devlog = devlogs(:one)
  end

  test "visiting the index" do
    visit devlogs_url
    assert_selector "h1", text: "Devlogs"
  end

  test "creating a Devlog" do
    visit devlogs_url
    click_on "New Devlog"

    fill_in "Content", with: @devlog.content
    fill_in "Title", with: @devlog.title
    click_on "Create Devlog"

    assert_text "Devlog was successfully created"
    click_on "Back"
  end

  test "updating a Devlog" do
    visit devlogs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @devlog.content
    fill_in "Title", with: @devlog.title
    click_on "Update Devlog"

    assert_text "Devlog was successfully updated"
    click_on "Back"
  end

  test "destroying a Devlog" do
    visit devlogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Devlog was successfully destroyed"
  end
end
