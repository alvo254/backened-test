require "application_system_test_case"

class TmsTest < ApplicationSystemTestCase
  setup do
    @tm = tms(:one)
  end

  test "visiting the index" do
    visit tms_url
    assert_selector "h1", text: "Tms"
  end

  test "should create tm" do
    visit tms_url
    click_on "New tm"

    fill_in "Course", with: @tm.course
    fill_in "Email", with: @tm.email
    fill_in "First name", with: @tm.first_name
    fill_in "Last name", with: @tm.last_name
    click_on "Create Tm"

    assert_text "Tm was successfully created"
    click_on "Back"
  end

  test "should update Tm" do
    visit tm_url(@tm)
    click_on "Edit this tm", match: :first

    fill_in "Course", with: @tm.course
    fill_in "Email", with: @tm.email
    fill_in "First name", with: @tm.first_name
    fill_in "Last name", with: @tm.last_name
    click_on "Update Tm"

    assert_text "Tm was successfully updated"
    click_on "Back"
  end

  test "should destroy Tm" do
    visit tm_url(@tm)
    click_on "Destroy this tm", match: :first

    assert_text "Tm was successfully destroyed"
  end
end
