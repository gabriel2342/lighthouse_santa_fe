require "application_system_test_case"

class ServiceProvidersTest < ApplicationSystemTestCase
  setup do
    @service_provider = service_providers(:one)
  end

  test "visiting the index" do
    visit service_providers_url
    assert_selector "h1", text: "Service providers"
  end

  test "should create service provider" do
    visit service_providers_url
    click_on "New service provider"

    fill_in "About", with: @service_provider.about
    fill_in "City", with: @service_provider.city
    fill_in "Contact person", with: @service_provider.contact_person
    fill_in "Email", with: @service_provider.email
    fill_in "Municipality", with: @service_provider.municipality_id
    fill_in "Name", with: @service_provider.name
    fill_in "Phone", with: @service_provider.phone
    fill_in "Services", with: @service_provider.services
    fill_in "State", with: @service_provider.state
    fill_in "Street", with: @service_provider.street
    fill_in "Url", with: @service_provider.url
    fill_in "Zip", with: @service_provider.zip
    click_on "Create Service provider"

    assert_text "Service provider was successfully created"
    click_on "Back"
  end

  test "should update Service provider" do
    visit service_provider_url(@service_provider)
    click_on "Edit this service provider", match: :first

    fill_in "About", with: @service_provider.about
    fill_in "City", with: @service_provider.city
    fill_in "Contact person", with: @service_provider.contact_person
    fill_in "Email", with: @service_provider.email
    fill_in "Municipality", with: @service_provider.municipality_id
    fill_in "Name", with: @service_provider.name
    fill_in "Phone", with: @service_provider.phone
    fill_in "Services", with: @service_provider.services
    fill_in "State", with: @service_provider.state
    fill_in "Street", with: @service_provider.street
    fill_in "Url", with: @service_provider.url
    fill_in "Zip", with: @service_provider.zip
    click_on "Update Service provider"

    assert_text "Service provider was successfully updated"
    click_on "Back"
  end

  test "should destroy Service provider" do
    visit service_provider_url(@service_provider)
    click_on "Destroy this service provider", match: :first

    assert_text "Service provider was successfully destroyed"
  end
end
