ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => 'lawrence.wdi6@gmail.com',
  :password             => 'paideuo123',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }

