class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable


    # Allowlist for searchable attributes
    def self.ransackable_attributes(auth_object = nil)
      # Specify the attributes you want to allow for searching
      %w[email created_at updated_at]  # Include only non-sensitive attributes
    end
end
