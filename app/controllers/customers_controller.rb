class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order_by("full_name")
  end

  def missing_email
    @customers = Customer.where(:email_address => nil)
  end
end
