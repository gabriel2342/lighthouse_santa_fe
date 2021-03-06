class Organization < ApplicationRecord  
  has_many :users, dependent: :destroy
  has_many :municipalities, dependent: :destroy, inverse_of: :organization
  accepts_nested_attributes_for :municipalities, allow_destroy: true

  validates_presence_of :name

  scope :ordered, -> { order(id: :desc) }

end
