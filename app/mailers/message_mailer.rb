class MessageMailer < ApplicationMailer

  default from: "Your BEAST Mailer <noreply@example.com>"
  default to: "Your Name <luffe41@gmail.com>"


  def new_message(message)
  	@message = message

  	mail subject: "Message from #{message.name}"
  end
  

end
