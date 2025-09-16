class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { member: 0, admin: 1 }
  has_many :projects, foreign_key: :owner_id
  has_many :assigned_issues, class_name: "Issue", foreign_key: :assignee_id
end
