class AddVarnishBrandToFurnitures < ActiveRecord::Migration[7.1]
  def change
    add_column :furnitures, :varnish_brand, :string
  end
end
