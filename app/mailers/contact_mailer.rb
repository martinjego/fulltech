class ContactMailer < ActionMailer::Base
  layout 'mailer'

  def email(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    mail(to: ENV["GMAIL_USERNAME"], from: @email, subject: 'New website message')
  end
end
