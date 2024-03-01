class AddColumnsToRealisations < ActiveRecord::Migration[7.1]
  def change
    add_column :realisations, :varnish, :string
    add_column :realisations, :varnish_brand, :string
    add_column :realisations, :color, :string
    add_column :realisations, :paint_brand, :string
    add_column :realisations, :tint, :string
  end
end
