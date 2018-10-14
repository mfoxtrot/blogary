require 'rails_helper'

RSpec.describe Role, type: :model do

  describe 'Validations' do
    it { should validate_presence_of :name }
  end

  describe 'Associations' do
    it { should have_many(:role_assignments).dependent(:destroy) }
    it { should have_many(:users).through(:role_assignments) }
  end
end
