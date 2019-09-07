class SessionsController < ApplicationController
  
  def new
  end

  def create
    #there must be a better way to write this? what about edge cases?
    if params[:name] == nil || params[:name] == ''
      #copied and pasted over exactly from the spec (otherwise it fails)
      redirect_to controller: 'sessions', action: 'new'
    else 
      #set the session[:name] to submitted params
      session[:name] = params[:name]
      #all okay, so redirect to the secrets controller, and show
      redirect_to controller: 'secrets', action: 'show'
    end
  end

  def destroy
    #elete name from the session
    session.delete :name
  end

end
