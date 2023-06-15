class NotifierMailer < ApplicationMailer
    default to: "juchaultantoine@gmail.com"
            from: "antoinejuchault.com"
    def simpleMessage(first_name, last_name, email, message)
        mail (
            "reply to": email_adress_with_name(email, "#{first_name} #{last_name}"),
            subject: "New contact for your website"
            body: message
        )
    end
end
