class ContactFormController < ApplicationController
  
  def new
    @message = Message.new
  end

  def create
      @message = Message.new message_params
    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to new_message_url
      flash[:notice] = "Nous avons bien reçu votre message. Nous allons en prendre connaissance rapidement et revenir vers vous."
    else
      flash[:notice] = "Une erreur s'est produite lors de l'envoi du message. Merci de bien vouloir essayer à nouveau."
      render :new
    end
  end

  private
  
  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
