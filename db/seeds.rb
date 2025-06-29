# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(
    [
        { email_address: "user1@example.com", password: "User1" },
        { email_address: "user2@example.com", password: "User2" }
    ]
)

pic = Pic.create!(name: "Sample_Pic_1")
pic.featured_image.attach(
    io: File.open(Rails.root.join ("app/assets/images/ninh binh mult.png")),
    filename: "Sample_Pic_1.png",
    content_type: "image/png"
)
