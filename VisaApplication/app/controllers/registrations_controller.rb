class RegistrationsController < ApplicationController
    def signup 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)

        if @user.save 
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
            redirect_to login_path 
        else
            render :signup 
        end
    end


    private 

    def user_params 
        params.require(:user).permit(:email, :password, :password_confirmation)
    end 

end
