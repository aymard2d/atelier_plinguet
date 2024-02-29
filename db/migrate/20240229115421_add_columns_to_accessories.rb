class AddColumnsToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :color, :string
    add_column :accessories, :paint_brand, :string
    add_column :accessories, :varnish, :string
    add_column :accessories, :varnish_brand, :string
    add_column :accessories, :tint, :string
  end
end
