class ApplicationController < ActionController::API

    def hmac_secret
        ENV["SECRET"]
    end

    # def require_login
    #     raise error unless session.include? :user_id
    # end

end
