require 'rails_helper'

RSpec.describe Grant, type: :model do

  describe 'Validations' do
    it { should validate_presence_of :grantable_type }
    it { should validate_presence_of :mode }
  end

  describe 'Associations' do
    it { should belong_to(:grantable) }
    it { should have_many(:grant_assignments).dependent(:destroy) }
    it { should have_many(:granted_users).through(:grant_assignments) }
  end
end
