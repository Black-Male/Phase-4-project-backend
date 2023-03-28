class ApplicationController < ActionController::API
    include ActionController::Cookies 
    rescue_from StandardError, with: :standard_error


    #hash data into web token
    def encode(uid,email)
        payload ={
            data: {
                uid: uid,
                email: email
            },
            exp: Time.now.to_i + (24 * 3600)
        }
        begin
        JWT.encode(payload, ENV['task train key'], 'HS256')
        rescue JWT::EncodeError => e
            render json:{errors:"something went wrong"}, status: 400

        end
    end

    #unhash token
    def decode(token)
        begin
        JWT.decode(token, ENV['task_train_key'],true,{algorithm:'HS256'})
        rescue JWT::DecodeError => e
            render json:{errors:"your request is not authorized"},status: :unauthorized
        end
    end

    #get and save user_id
    def save_user_id(token)
        @uid = decode(token)[0]["data"]["uid"].to_i
    end

    # get logged in user
    def user
        User.find(@uid) 
    end

    def verify_auth
        auth_headers = request.headers['Authorization']
        if !auth_headers
            render json:{errors:"Your request is not authorized"}, status: :unauthorized
        else
            token = auth_headers.split(' ')[1]
            save_user_id(token)
        end
    end

    #delete jwt token 
    def remove_user 
        token - nil
        render json:{message:"log out successful"}
    end

     # rescue all common errors
     def standard_error(exception)
        render json:{errors:exception.message}, status: :unprocessable_entity
    end

end
