class UserMailer < ActionMailer::Base
  default from: 'lawrence.ly667@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.co'
    mail(to: @user.email, subject: 'Welcome')
  end
end
