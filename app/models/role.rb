class Role < ApplicationRecord

  validates :name, presence: true

  has_many :role_assignments, dependent: :destroy
  has_many :users, through: :role_assignments
  has_many :permission_assignments, dependent: :destroy
  has_many :permissions, through: :permission_assignments
end
