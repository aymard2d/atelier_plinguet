class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.with(contact: @contact).new_contact_email.deliver_now
      puts "Email sent to: #{ENV['CONTACT_EMAIL']}" # Check if this prints
      redirect_to root_path, notice: "Merci pour votre message ! L'Atelier va en prendre rapidement connaissance et revenir vers vous."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :subject, :telephone)
  end

end
