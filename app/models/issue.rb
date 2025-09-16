class Issue < ApplicationRecord
  belongs_to :project
  belongs_to :assignee, class_name: "User", optional: true
  has_many :comments
  has_and_belongs_to_many :labels
end
