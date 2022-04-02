class UsersController < ApplicationController

  # permet à l'utilisateur de se connecter
  skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  # créer user et renvoie à home
  def create
    @user = User.create(params.require(:user).permit(:username, :password, :admin))
    session[:user_id] = @user.id
    redirect_to '/home'
  end
end
