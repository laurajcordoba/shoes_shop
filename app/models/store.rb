class Store < ActiveRecord::Base
  # == Associations
  has_many :articles

  # == Validations
  validates :name, :address, presence: true
end
