# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
if Rails.env.development?
  organization = Organization.create(name: "Testverein1")
  Task.create(title: "Test task", description: "Beschreibung", organization: organization)
  company = Company.create(name: "news aktuell", address: "Mittelweg 144")
  User.create(first_name: 'Katharina', last_name: 'Heimes', email: 'heimes@newsaktuell.de', company: company)
end
