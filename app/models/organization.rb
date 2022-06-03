class Organization < ApplicationRecord
  has_many :municipalities, dependent: :destroy
  accepts_nested_attributes_for :municipalities, allow_destroy: true
end
