json.extract! service_provider, :id, :name, :about, :street, :city, :state, :zip, :contact_person, :phone, :email, :url, :services, :municipality_id, :created_at, :updated_at
json.url service_provider_url(service_provider, format: :json)
