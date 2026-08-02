# Seed Users
# User.destroy_all

User.create!([ {
    email_address: "User1@example.com",
    password: "User1" }, {
    email_address: "User2@example.com",
    password: "User2" }, {
    email_address: "User3@example.com",
    password: "User3"
    }
])

# Pic.create!([ { name: "seed_pic" } ])
# Pic.find(1).images.attach(io: File.open(Rails.root.join("app/assets/images/ninh_binh_mult.png")), filename: "ninh_binh_mult.png")

# <% @pics.each do |image| %> <% image_tag (image)%><% end %> %>
# <a href="/pics/<%= pic.id%>"><%= pic.name %><% end %></a>

# User.find(1).pics.attach(io: File.open(Rails.root.join("app/assets/images/ninh_binh_mult.png")), filename: "ninh_binh_mult.png")
# User2 = User.create!(
#     email_address: "user1@example.com",
#     password: "User2"
# )

# User3 = User.create!(
#     email_address: "user1@example.com",
#     password: "User3"
# )

# Seed Photo
# User1 = User.find(1)
# pic1 = Pic.create!(name: "Sample_Pic_1", user_id: User.ids[0])
# pic1.featured_image.attach(
#     io: File.open(Rails.root.join("app/assets/images/ninh_binh_mult.png")),
#     filename: "Sample_Pic_1.png",
#     content_type: "image/png"
# )

# Attach Photo
