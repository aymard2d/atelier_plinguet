class AddTeintToFurnitures < ActiveRecord::Migration[7.1]
  def change
    add_column :furnitures, :teint, :string
  end
end
