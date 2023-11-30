class UserMailer < ApplicationMailer
  default from: 'aamirsohail9210@gmail.com'

  def welcome_email
    @user = User.first
    # @url  = 'http://example.com/login'
    mail(
      to: 'aamirsohail9210@gmail.com', 
      subject: 'Welcome to My Awesome Site'
    )
  end
end
