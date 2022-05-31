class Organization < ApplicationRecord
  has_many :municipalities
  accepts_nested_attributes_for :municipalities, allow_destroy: true
end
