class Store < ActiveRecord::Base
  # == Associations
  has_many :articles

  # == Validations
  validates_presence_of :name, :address
end
