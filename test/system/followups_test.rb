require "application_system_test_case"

class FollowupsTest < ApplicationSystemTestCase
  setup do
    @followup = followups(:one)
  end

  test "visiting the index" do
    visit followups_url
    assert_selector "h1", text: "Followups"
  end

  test "creating a Followup" do
    visit followups_url
    click_on "New Followup"

    fill_in "Contact date", with: @followup.contact_date
    fill_in "Contact name", with: @followup.contact_name
    fill_in "Email", with: @followup.email
    fill_in "Followup date", with: @followup.followup_date
    fill_in "Notes", with: @followup.notes
    fill_in "Phone", with: @followup.phone
    fill_in "Project name", with: @followup.project_name
    fill_in "Status", with: @followup.status
    click_on "Create Followup"

    assert_text "Followup was successfully created"
    click_on "Back"
  end

  test "updating a Followup" do
    visit followups_url
    click_on "Edit", match: :first

    fill_in "Contact date", with: @followup.contact_date
    fill_in "Contact name", with: @followup.contact_name
    fill_in "Email", with: @followup.email
    fill_in "Followup date", with: @followup.followup_date
    fill_in "Notes", with: @followup.notes
    fill_in "Phone", with: @followup.phone
    fill_in "Project name", with: @followup.project_name
    fill_in "Status", with: @followup.status
    click_on "Update Followup"

    assert_text "Followup was successfully updated"
    click_on "Back"
  end

  test "destroying a Followup" do
    visit followups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Followup was successfully destroyed"
  end
end
