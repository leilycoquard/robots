class ApplicationController < ActionController::Base

  before_action :authorized # pages autorisées sans connexion
  helper_method :current_user # macros pour vérifier si le user est connecté et son nom
  helper_method :logged_in?

  # informations de l'utilisateur actuel
  def current_user
    User.find_by(id: session[:user_id])
  end

  # on vérifie s'il est connecté
  def logged_in?
    !current_user.nil?
  end

  # va à welcome si non identifié
  def authorized
    redirect_to '/welcome' unless logged_in?
  end

end
