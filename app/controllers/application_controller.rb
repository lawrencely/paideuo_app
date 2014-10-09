class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate
  before_action :task_mailer

  private

  def authenticate
    @current_user = User.find_by(:id => session[:user_id])
    session[:user_id] = nil unless @current_user.present?
  end

  def task_mailer
    @users = User.all
    @users.each do |user|
      user.tasks.each do |task|
        if task.partner && task.partner.email.present? && Time.now > task.datetime && task.check_sent == false
          UserSignUpNotification.paideuo_email(task.partner).deliver
          task.check_sent = true
          task.save
        end
      end
    end
  end
end