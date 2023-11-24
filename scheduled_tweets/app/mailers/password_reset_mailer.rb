class PasswordResetMailer < ApplicationMailer
    def reset
      @user = params[:user]
      @reset_url = password_reset_edit_url(token: @user.signed_id(purpose: "password_reset", expires_in: 15.minutes))
  
      mail to: @user.email, subject: "Password Reset Request"
    end
  end
  