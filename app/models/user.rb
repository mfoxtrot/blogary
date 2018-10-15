class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :role_assignments, dependent: :destroy
  has_many :roles, through: :role_assignments

  has_many :permission_assignments, through: :roles
  has_many :permissions, through: :permission_assignments
end
