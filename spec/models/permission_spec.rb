require 'rails_helper'

RSpec.describe Permission, type: :model do

  describe 'Validations' do
    it { should validate_presence_of :resource }
    it { should validate_presence_of :action }
    it { should validate_uniqueness_of(:resource).scoped_to(:action).case_insensitive }
  end

  describe 'Associations' do
    it { should have_many(:permission_assignments).dependent(:destroy) }
    it { should have_many(:roles).through(:permission_assignments) }
  end
end
