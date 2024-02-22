class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]
    mail(to: 'sarah92370@hotmail.fr', subject: "Demande d'information")
  end
end
