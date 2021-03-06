class UserSignUpNotification < ActionMailer::Base
  default from: 'lawrence.wdi6@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://paideuo.herokuapp.com/login'
    mail(to: @user.email, subject: 'Welcome')
  end

  def paideuo_email(partner)
    @partner = partner
    mail(to: @partner.email, subject: 'Paideuo Time')
  end
end
