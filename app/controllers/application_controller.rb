class ApplicationController < ActionController::API
    include ActionController::Cookies

    def login!
        session[:user_id] = @user.id
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
