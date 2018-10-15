require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it { should validate_presence_of :email }
  end

  describe 'Associations' do
    it { should have_many(:role_assignments).dependent(:destroy) }
    it { should have_many(:roles).through(:role_assignments) }
    it { should have_many(:permission_assignments).through(:roles) }
    it { should have_many(:permissions).through(:permission_assignments) }
  end
end
