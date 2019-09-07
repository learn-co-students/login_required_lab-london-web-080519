class SecretsController < ApplicationController
  #anything on the secrets controller should require_login before doing anything else
  before_action :require_login

  def show
    #will automagically try to render the 'views/secrets/show' page
  end

  private

  #our require_login, private only to SecretsController
  def require_login
    #unless the session includes :name
    unless session.include? :name
      #redirect to the sessions controller (as on specs)
      redirect_to controller: 'sessions', action: 'new'
    end

  end

   
end
