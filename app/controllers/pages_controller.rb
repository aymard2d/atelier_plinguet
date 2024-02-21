class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @last_furnitures = Furniture.last(3)
    @last_accessories = Accessory.last(3)
    @last_realisations = Realisation.last(3)
  end

  def atelier
  end
  
end
