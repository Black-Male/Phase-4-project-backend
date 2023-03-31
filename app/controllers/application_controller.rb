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
        JWT.encode(payload, ENV['movies_key'], 'HS256')
    end

    #unhash token
    def decode(token)
        JWT.decode(token, ENV['movies_key'],true,{algorithm:'HS256'})
    end

    # get logged in user
    def user_token
        User.find(@uid) 
    end

    def verify_auth
        auth_headers = request.headers['Authorization']
        if auth_headers.blank?
            render json:{errors:"Your request is not authorized"}, status: :unauthorized
        else
            token = auth_headers.split(' ')[1]
            @uid = decode(token)[0]["data"]["uid"].to_i

            # save_user_id(token)
        end
    end

     #get and save user_id
    def save_user_id(token)
        @uid = decode(token)[0]["data"]["uid"].to_i
    end

    #delete jwt token 
    def remove_user_token 
        token = nil
        render json:{message:"log out successful"}
    end

     # rescue all common errors
    def standard_error(exception)
        render json:{errors:exception.message}, status: :unprocessable_entity
    end

     #store user id in session
     def save_user(id)
        session[:uid] = id
        # session[:expiry] = 12.hours.from_now
    end 
    
    #delete user id in session
    def remove_user
        session.delete(:uid) 
        session[:expiry] = Time.now 
        render json:{message:"log out successful"}
    end
    
    #check for session expiry
    def session_expired? 
         session[:expiry] ||= Time.now
         time_diff = (Time.parse(session[:expiry]) - Time.now).to_i
        unless time_diff > 0
            render json: {errors:"your session has expired log in to continue"}, status: :unauthorized        
        end
    end

    #get logged in user session
    def user 
        User.find(session[:uid].to_i)
    end
    

end
