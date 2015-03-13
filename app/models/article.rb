class Article < ActiveRecord::Base
  # == Associations
  belongs_to :store

  # == Validations
  validates :name, :store_id, presence: true
end
