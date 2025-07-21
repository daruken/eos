# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(nickname: "홍길동", phone_number: "01012345678", email: "hong@example.com", registration_number: "880101-1234556")
User.create(nickname: "김철수", phone_number: "01098765432", email: "kim@example.com", registration_number: "020511-6543210")
