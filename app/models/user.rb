class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many_attached :pics, dependent: :destroy
  # accepts_nested_attributes_for :pics

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
