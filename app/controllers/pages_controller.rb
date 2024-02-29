class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :atelier]
  def home
    @last_furnitures = Furniture.last(3).reverse
    @last_accessories = Accessory.last(3).reverse
    @last_realisations = Realisation.last(3)
  end

  def atelier
  end
  
end
