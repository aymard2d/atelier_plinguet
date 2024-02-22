class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]
    mail(to: 'sarahandrre@gmail.com', subject: "Demande d'information")
  end
end
