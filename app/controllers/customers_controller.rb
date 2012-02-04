class CustomersController < InheritedResources::Base
  respond_to :html

  def create
    create! do |success, failure|
      success.html do
        flash[:customer_id] = @customer.id
        redirect_to new_user_registration_url
      end
    end
  end
end