class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]
    mail(to: 'aymard.de.dieu@gmail.com', subject: "Demande d'information")
  end
end
