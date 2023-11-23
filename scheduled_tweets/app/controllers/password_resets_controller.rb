class PasswordResetsController < ApplicationController
    def new 
    end 
     
    def create 
        @user = user.find_by(email: params[:email])

        if @user.present?
            #send email
            PasswordResetMailer.with(user: @user).reset.deliver_now

        end    

        redirect_to root_path, notice: "If an account with this email was found, we have sent a link to reset your password"
    end
end
