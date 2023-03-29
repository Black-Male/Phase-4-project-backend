class UsersController < ApplicationController
    before_action :session_expired?, only: [:check_login_status] 

    def register
        user = User.create(user_params)
        if user.valid?
            save_user(user.id)
            render json: user,status: :created
        else
            render json: user.errors, status: :unprocessable_entity
        end 
    end

    def login 
        sql = "username = :username OR email = :email"
        user = User.where(sql, {username: user_params[:username], email: user_params[:email]}).first
        if user&.authenticate(user_params[:password])
            save_user(user.id)
            token = encode(user.id,user.email)
            render json: {user: user, token: token}
        else
            render json: {errors: "invalid username or password"}, status: :unauthorized
        end
    end

    def logout
        remove_user
    end

    def check_login_status 
        render json:{message:"success"}
    end

    private 

    def user_params 
        params.permit(:username,:email,:password)
    end
end
