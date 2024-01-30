class AddLocationToRealisations < ActiveRecord::Migration[7.1]
  def change
    add_column :realisations, :localisation, :string
  end
end
