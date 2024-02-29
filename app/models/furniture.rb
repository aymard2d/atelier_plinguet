class Furniture < ApplicationRecord
  has_many_attached :photos
  include PgSearch::Model
  pg_search_scope :search_by_type_and_color,
  against: [ :type_of_furniture, :color ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  validates :name, :description, :material, :type_of_furniture, presence: true

end
