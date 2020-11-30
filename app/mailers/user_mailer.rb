class UserMailer < ApplicationMailer
    
    def welcome_email
        user = User.last
        email = "ashanmugam3@dxc.com"
        mail(to: email, subject: "Welcome to the world of email!!")        
    end
end
