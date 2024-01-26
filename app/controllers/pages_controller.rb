class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @last_creations = Furniture.last(3)
    @last_realisations = Accessory.last(3)
  end
end
