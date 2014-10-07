class UserSignUpNotification < ActionMailer::Base
  default from: 'lawrence.ly667@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://paideuo.herokuapp.com/login'
    mail(to: @user.email, subject: 'Welcome')
  end
end
