class NotifierMailer < ApplicationMailer
    default to: "juchaultantoine@gmail.com",
            from: "antoinejuchault.com"
  
    def simple_message(first_name, last_name, email, message)
      mail(
        to: "juchaultantoine@gmail.com",
        reply_to: email_with_name(email, "#{first_name} #{last_name}"),
        subject: "New contact form submission",
        body: message
      )
    end
  
    private
  
    def email_with_name(email, name)
      %("#{name}" <#{email}>)
    end
  end
  