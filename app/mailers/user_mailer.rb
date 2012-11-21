class UserMailer < ActionMailer::Base

  default from: "help@personaltrainer.com"

  def sign_up_email(user)
  	@user
  	mail(to: user.email, subject: "Welcome to your personal trainer")
end
