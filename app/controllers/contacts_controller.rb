class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.with(contact: @contact).new_contact_email.deliver_now
      puts "Email sent to: #{ENV['CONTACT_EMAIL']}" # Check if this prints
      redirect_to new_contact_path, notice: "Merci pour votre message ! L'Atelier va en prendre rapidement connaissance et revenir vers vous."
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
