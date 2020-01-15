class AuthController < ApplicationController
   def login
        user = User.find_by(email: login_params[:email])
        if user && user.authenticate(login_params[:password])
            token = JWT.encode({user_id: user.id}, hmac_secret, 'HS256')
        render json: {user: user, token: token}

        else
        render json: {errors: user.errors.full_messages}
        end
   end
   
   def persist
        if request.headers['Authorization']
            encoded_token = request.headers['Authorization'].split(' ')[1]
            token = JWT.decode(encoded_token, hmac_secret)
            user_id = token[0]['user_id']
            user = User.find(user_id)
            render json: user
        end       
   end
    
    private

    def login_params
        params.permit(:email, :password)
    end
end