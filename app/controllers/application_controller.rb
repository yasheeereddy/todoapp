class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    helper_method :current_user, :logged_in?


    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end 

    end

    def logged_in?
        !!current_user
    end

end
