class AddVarnishToFurnitures < ActiveRecord::Migration[7.1]
  def change
    add_column :furnitures, :varnish, :string
  end
end
