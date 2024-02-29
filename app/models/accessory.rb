class Accessory < ApplicationRecord
  has_many_attached :photos
  validates :name, :description, :material, :type_of, presence: true
end
