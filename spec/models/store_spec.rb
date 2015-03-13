require 'rails_helper'

RSpec.describe Store, type: :model do
  context "Associations" do
    it { should have_many :articles }
  end

  context "Validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :address }
   end

end
