class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.login(params[:sessions][:username], params[:sessions][:password])
  	if @user.present?
  		flash[:alert] = "Welcome back"
  		session[:user_id] = @user.id
  		redirect_to root_path
  	else
  		flash[:error] = "Invalid email or password"
  		render "new"
  	end
  end

  def destroy
  	reset_session
  	flash[:alert] = "Good bye!"
  	redirect_to root_path
  end
end
