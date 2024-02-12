class Furniture < ApplicationRecord
  attr_accessor :existing_photos
  has_many_attached :photos
end
