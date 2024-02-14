class ContactFormController < ApplicationController
  def create
    @name = params[:contact_form][:name]
    @last_name = params[:contact_form][:last_name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]

    # Perform any necessary actions with the form data
    flash[:success] = "Votre message a bien été envoyé !"
    redirect_to :root
  end
end
