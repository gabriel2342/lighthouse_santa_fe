class DropServicesFromServiceProviders < ActiveRecord::Migration[7.0]
  def change
    remove_column :service_providers, :services, :string
  end
end
