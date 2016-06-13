class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by(name: params[:session][:name])
  	if user and user.authenticate(params[:session][:password])
  		session[:user_id] = user.id
  		session[:admin] = user.admin
  		redirect_to user_url(user.id)
  	else
  		redirect_to login_sessions_url alert:"Invalid Username or Password"
  	end
  end

  def destroy
  	puts "!!!!!!!!!!!!!!!!!!!!!"
  	session[:user_id] = nil
  	session[:admin] = 0
  	redirect_to "/"
  end
end
