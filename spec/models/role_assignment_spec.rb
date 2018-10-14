require 'rails_helper'

RSpec.describe RoleAssignment, type: :model do

  describe 'Associations' do
    it { should belong_to(:role) }
    it { should belong_to(:user) }
  end
end
