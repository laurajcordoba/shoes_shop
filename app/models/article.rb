class Article < ActiveRecord::Base
  # == Associations
  belongs_to :store

  # == Validations
  validates_presence_of :name, :store_id
end
