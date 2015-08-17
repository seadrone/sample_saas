class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
      @contact = Contact.new(contact_params)
      
      if @contact.save
        flash[:success] = "Message sent! We'll be in touch shortly."
        redirect_to new_contact_path 
      else
        flash[:danger] = "Error, message not sent."
        redirect_to new_contact_path 
      end
      
    end
    
    private
      def contact_params
        params.require(:contact).permit(:name, :email, :comments) #white list attributes for contact object for security
      end
end