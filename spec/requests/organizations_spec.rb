require 'rails_helper'

RSpec.describe "Organizations", type: :request do
  describe "POST organization#create" do
    it "creates organization with valid attributes" do
      organization_params = { organization: { name: "Homelessness Boooooo" } }
      post organizations_path, params: organization_params
      expect(response).to have_http_status(302)
    end
  end

  describe "GET organization#index" do
    it "returns http success" do
      get organizations_path
      expect(response).to have_http_status(302)
    end
  end

  describe "GET organization#show" do
    organization_params = { organization: { name: "Homelessness Boooooo", id: 1 } }
    organization = Organization.create(organization_params[:organization])
    get organization_path, params: organization_params
  end
end
