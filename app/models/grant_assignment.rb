class GrantAssignment < ApplicationRecord
  belongs_to :grant
  belongs_to :user
end
