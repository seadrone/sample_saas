class ContactMailer < ActionMailer::Base
  default to: "gsdrone@gmail.com"
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: "Dev Match Contact Form Message")
    
  end
  
end