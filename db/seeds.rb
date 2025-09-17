# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create users
admin = User.create!(email: "admin@example.com", password: "password", role: :admin)
member = User.create!(email: "member@example.com", password: "password", role: :member)

# Create a project
project = Project.create!(name: "Karya Alpha", description: "First test project", owner: admin)

# Add membership
Membership.create!(user: admin, project: project, role: "admin")
Membership.create!(user: member, project: project, role: "member")

# Create issues
Issue.create!(title: "Setup Devise", description: "Add JWT auth", status: "open", priority: "high", project: project, assignee: admin)
Issue.create!(title: "Add Labels", description: "Tagging system", status: "open", priority: "medium", project: project, assignee: member)
