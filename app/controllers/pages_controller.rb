class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :atelier]
  def home
    @last_furnitures = Furniture.first(3)
    @last_accessories = Accessory.first(3)
    @last_realisations = Realisation.last(3)
  end

  def atelier
  end
  
end
