class Municipality < ApplicationRecord
  belongs_to :organization
  has_many :service_providers, dependent: :destroy

  accepts_nested_attributes_for :service_providers, allow_destroy: true
end
