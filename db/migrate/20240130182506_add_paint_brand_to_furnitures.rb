class AddPaintBrandToFurnitures < ActiveRecord::Migration[7.1]
  def change
    add_column :furnitures, :paint_brand, :string
  end
end
