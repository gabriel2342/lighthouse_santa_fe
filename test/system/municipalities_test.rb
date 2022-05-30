require "application_system_test_case"

class MunicipalitiesTest < ApplicationSystemTestCase
  setup do
    @municipality = municipalities(:one)
  end

  test "visiting the index" do
    visit municipalities_url
    assert_selector "h1", text: "Municipalities"
  end

  test "should create municipality" do
    visit municipalities_url
    click_on "New municipality"

    fill_in "Name", with: @municipality.name
    fill_in "Organization", with: @municipality.organization_id
    click_on "Create Municipality"

    assert_text "Municipality was successfully created"
    click_on "Back"
  end

  test "should update Municipality" do
    visit municipality_url(@municipality)
    click_on "Edit this municipality", match: :first

    fill_in "Name", with: @municipality.name
    fill_in "Organization", with: @municipality.organization_id
    click_on "Update Municipality"

    assert_text "Municipality was successfully updated"
    click_on "Back"
  end

  test "should destroy Municipality" do
    visit municipality_url(@municipality)
    click_on "Destroy this municipality", match: :first

    assert_text "Municipality was successfully destroyed"
  end
end
