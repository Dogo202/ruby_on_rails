class AccountActivationsController < ApplicationController
  # def edit
  #   user = User.find_by(email: params[:email])
  #   if user && !user.confirmed? && user.user_signed_in?
  #     user.activate
  #     log_in user
  #     flash[:success] = "Account activated!"
  #     redirect_to user
  #   else
  #     flash[:danger] = "Invalid activation link"
  #     redirect_to root_url
  #   end
  # end
end
