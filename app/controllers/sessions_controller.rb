class SessionsController < ApplicationController

  def new
  end

  def create
  customer = Customer.find_by(email: params[:session][:email])
      if customer && customer.authenticate(params[:session][:password])
        session[:customer_id] = customer.id
        flash[:notice] = "Logged in successfully"
        redirect_to customer
      else
        flash.now[:alert] = "There was something wrong with your login details"
        render 'new'
      end
  end

  def destroy
    session[:customer_id] = nil
  flash[:notice] = "Logged out"
  redirect_to root_path
  end

end
