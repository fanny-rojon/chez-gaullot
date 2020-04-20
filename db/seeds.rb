puts "Destroying all Users"

User.destroy_all

puts "Creating Users..."

catherine = User.create!(email: "catherine@email.com", password: "varennes", first_name: "Catherine");
caroline = User.create!(email: "caroline@email.com", password: "varennes", first_name: "Caroline");
laure = User.create!(email: "laure@email.com", password: "varennes", first_name: "Laure");
delphine = User.create!(email: "delphine@email.com", password: "varennes", first_name: "Delphine");
celine = User.create!(email: "celine@email.com", password: "varennes", first_name: "Céline");
fanny = User.create!(email: "fanny@email.com", password: "varennes", first_name: "Fanny");
martine = User.create!(email: "martine@email.com", password: "varennes", first_name: "Martine");
cecile = User.create!(email: "cecile@email.com", password: "varennes", first_name: "Cécile");


puts "Created #{User.count} user(s)"
