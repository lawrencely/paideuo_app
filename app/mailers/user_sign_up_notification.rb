class UserSignUpNotification < ActionMailer::Base
  default from: "lawrence.wdi6@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://example.co'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end