# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
categories = ["chinese", "italian", "japanese", "french", "belgian"]
names = ["Xiaoping's 餐厅", "Mussolini's Ristorante", "Naruhito's レストラン", "Antoinette's Boulangerie", "EU's restaurant"]

categories.length.times do |i|
  Restaurant.create(name: names[i], address: 'London UK', phone_number: '123-456-789', category: categories[i])
end
