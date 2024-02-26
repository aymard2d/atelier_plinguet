class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]
    mail(to: 'contact@atelier-plinguet.fr', subject: "#{@contact.subject.upcase}")
  end
end
