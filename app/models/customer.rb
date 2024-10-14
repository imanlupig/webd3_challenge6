class Customer < ApplicationRecord
  # validations to check for full name and email address
  validates :full_name, presence: true
  validates :email_address, presence: true

  has_one_attached :image
end
