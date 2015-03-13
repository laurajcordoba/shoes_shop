require 'rails_helper'

RSpec.describe Article, type: :model do
  context "Associations" do
    it { should belong_to :store }
  end

  context "Validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :store_id }
   end
end
