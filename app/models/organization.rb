class Organization < ApplicationRecord  
  belongs_to :user, optional: true
  has_many :municipalities, dependent: :destroy, inverse_of: :organization
  accepts_nested_attributes_for :municipalities, allow_destroy: true

  validates_presence_of :name

  scope :ordered, -> { order(id: :desc) }
  scope :ordered, -> { order(municipality_id: :desc) }

end
