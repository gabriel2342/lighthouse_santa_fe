class Municipality < ApplicationRecord
  validates_presence_of :name, :organization_id

  belongs_to :organization
  has_many :service_providers, dependent: :destroy, inverse_of: :municipality

  accepts_nested_attributes_for :service_providers, allow_destroy: true
end
