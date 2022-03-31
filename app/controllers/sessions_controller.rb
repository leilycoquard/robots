class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome] # accès à la page welcome

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/home'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/welcome'
  end

  def welcome
  end

  def login
  end

  def page_requires_login
  end

end
