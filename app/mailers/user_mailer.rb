class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(inquiry)
    @inquiry = inquiry
    @greeting = "Hi"

    mail to: "taku112ne@gmail.com", subject: "私の素敵なサイトへようこそ"
  end
end
