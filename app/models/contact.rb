class Contact < ApplicationRecord
  validates :name, presence: {presence: true, message: "(votre nom) doit être renseigné"}, length: { minimum: 2, message: "(votre nom) doit contenir au moins deux caractères."}
  validates :email, presence: {presence: true, message: ": merci de renseigner votre email." }
  validates :message, presence: {presence: true, message: ": merci de rédiger votre message" }, length: { minimum: 10, message: "doit contenir au moins 10 caractères" }
  validates :subject, presence: {presence: true, message: ": merci de sélectionner un sujet." }
  #length: { minimum: 2, message: "Votre nom doit contenir au moins deux caractères" }

end
