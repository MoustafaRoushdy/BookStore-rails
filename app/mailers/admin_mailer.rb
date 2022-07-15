class AdminMailer < ApplicationMailer


    default from: "notification@example.com"

    def welcome_email
        @user = params[:user]
        p @user
        @url = 'http://localhost:3000/login'
        mail(to: @user.email, subject: "welcome to my Awsome site")
    end

end
