class Municipality < ApplicationRecord
  belongs_to :organization, optional: true
  validates_presence_of :name, presence: true 
  validates_presence_of :organization_id, presence: true

  has_many :service_providers, dependent: :destroy

  accepts_nested_attributes_for :service_providers, allow_destroy: true



  def self.search(search)
    if search
    else
      all
    end
  end
end
