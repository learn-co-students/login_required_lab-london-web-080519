class SessionsController < ApplicationController
    def home
        if session[:name]
            @name = session[:name]
        else
            redirect_to login_path
        end
    end

    def new
    end

    def create
        if params[:name] == nil || params[:name] == ""
            redirect_to :login
        else
            session[:name] = params[:name]
            redirect_to homepage_path
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end