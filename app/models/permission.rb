class Permission < ApplicationRecord

  validates :resource, :action, presence: true
  validates :resource, uniqueness: { scope: :action, case_sensitive: false }

  has_many :permission_assignments, dependent: :destroy
  has_many :roles, through: :permission_assignments
end
