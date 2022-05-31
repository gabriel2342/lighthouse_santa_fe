class ChangeServicesInServiceProvider < ActiveRecord::Migration[7.0]
  def change
    change_column :service_providers, :services, :text, array: true, default: []
  end
end
