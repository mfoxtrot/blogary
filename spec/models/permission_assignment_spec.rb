require 'rails_helper'

RSpec.describe PermissionAssignment, type: :model do
  describe 'Associations' do
    it { should belong_to(:permission) }
    it { should belong_to(:role) }
  end
end
