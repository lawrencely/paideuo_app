class UserSignUpNotification < ActionMailer::Base
  default from: 'lawrence.wdi6@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://paideuo.herokuapp.com/login'
    mail(to: @user.email, subject: 'Welcome')
  end

  def paideuo_email(email)
    mail(to: email, subject: 'Paideuo Time for <%= @current_user.name %>')
  end
end
