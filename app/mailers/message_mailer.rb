class MessageMailer < ApplicationMailer
  require 'mailgun-ruby'

  def contact(message)
    @body = message.body
    mg_client = Mailgun::Client.new(ENV['mailgun_secret_api_key'])
    message_params = {
      from: message.email,
      to: ENV['email'], # Change this to your cousin's email
      subject: 'Contact Form',
      text: message.body
    }
    mg_client.send_message(ENV['mailgun_domain'], message_params)
  end
end
