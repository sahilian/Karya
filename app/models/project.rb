class Project < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :issues
  has_many :memberships
  has_many :users, through: :memberships
end
