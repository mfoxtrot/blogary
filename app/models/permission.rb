class Permission < ApplicationRecord

  validates :resource, :action, presence: true
  validates :resource, uniqueness: { scope: :action, case_sensitive: false }

  has_many :permission_assignments, dependent: :destroy
  has_many :roles, through: :permission_assignments

  scope :find_by_resource_and_action, ->(resource, action) { where('resource = ? and action = ?', resource, action)}
end
