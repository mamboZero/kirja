require 'test_helper'

class FollowupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @followup = followups(:one)
  end

  test "should get index" do
    get followups_url
    assert_response :success
  end

  test "should get new" do
    get new_followup_url
    assert_response :success
  end

  test "should create followup" do
    assert_difference('Followup.count') do
      post followups_url, params: { followup: { contact_date: @followup.contact_date, contact_name: @followup.contact_name, email: @followup.email, followup_date: @followup.followup_date, notes: @followup.notes, phone: @followup.phone, project_name: @followup.project_name, status: @followup.status } }
    end

    assert_redirected_to followup_url(Followup.last)
  end

  test "should show followup" do
    get followup_url(@followup)
    assert_response :success
  end

  test "should get edit" do
    get edit_followup_url(@followup)
    assert_response :success
  end

  test "should update followup" do
    patch followup_url(@followup), params: { followup: { contact_date: @followup.contact_date, contact_name: @followup.contact_name, email: @followup.email, followup_date: @followup.followup_date, notes: @followup.notes, phone: @followup.phone, project_name: @followup.project_name, status: @followup.status } }
    assert_redirected_to followup_url(@followup)
  end

  test "should destroy followup" do
    assert_difference('Followup.count', -1) do
      delete followup_url(@followup)
    end

    assert_redirected_to followups_url
  end
end
