class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @alphabetized_customers = Customer.order(:full_name)
  end

  def missing_email
    @missing_email_customers = Customer.where(email_address: [ nil, "" ])
  end
end
