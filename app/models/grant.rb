class Grant < ApplicationRecord

  validates :grantable_type, :mode, presence: true

  belongs_to :grantable, polymorphic: true
  has_many :grant_assignments, dependent: :destroy
  has_many :granted_users, through: :grant_assignments, source: :user
end
