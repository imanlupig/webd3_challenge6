class Customer < ApplicationRecord
  # validations to check for full name
  validates :full_name, presence: true


  has_one_attached :image
end
