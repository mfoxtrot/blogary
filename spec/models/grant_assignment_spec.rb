require 'rails_helper'

RSpec.describe GrantAssignment, type: :model do

  describe 'Associations' do
    it { should belong_to(:grant) }
    it { should belong_to(:user) }
  end
end
