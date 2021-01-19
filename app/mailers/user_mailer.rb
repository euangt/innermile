class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @user = params[:user]
    @greeting = "Hi"

    mail(to: @user.email, subject: 'Welcome to Innermile')

    
    # user = User.first
    # UserMailer.with(user: user).welcome.deliver_nows
  end
end
