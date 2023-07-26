class PagesController < ApplicationController
    def new
        @message = Message.new
    end
    
    def about
    end

    def create 
        @message = Message.new(message_params)  
        if @message.save
        sendEmail(@message)
        redirect_to root_path, notice: "Votre message a été envoyé avec succès"
        else 
            render :new
        end
    end
end
