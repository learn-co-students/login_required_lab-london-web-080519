class SecretsController < ApplicationController
    before_action :require_login

    def require_login
        redirect_to login_path unless session.include? :name
    end

    def show
        if session[:name]
        else
            redirect_to login_path
        end
    end
end