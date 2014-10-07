class UserSignUpNotification < ActionMailer::Base
  default from: "lawrence.wdi6@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'https://www.google.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end