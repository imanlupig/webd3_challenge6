class Customer < ApplicationRecord
  # validations to check for full name
  validates :full_name, presence: true

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    %w[full_name phone_number email_address notes created_at updated_at]
  end


  # Define ransackable associations
  def self.ransackable_associations(auth_object = nil)
    # Add associations that you want to be searchable here
    [] # No associations to allowlist, change this as necessary
  end
end
