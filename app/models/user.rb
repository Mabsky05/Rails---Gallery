class User < ApplicationRecord
  has_many_attached :images, dependent: :destroy
  has_secure_password validations: false
  has_many :sessions, dependent: :destroy
  normalizes :email_address, with: ->(e) { e.strip.downcase }
  # validates :password, presence: true, allow_blank: true
end
