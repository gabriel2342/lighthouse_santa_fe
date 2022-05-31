class AddServicesToServiceProviders < ActiveRecord::Migration[7.0]
  def change
    add_column :service_providers, :services, :text, array: true, default: []
  end
end
