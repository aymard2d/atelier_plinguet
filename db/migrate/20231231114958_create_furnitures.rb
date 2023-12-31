class CreateFurnitures < ActiveRecord::Migration[7.1]
  def change
    create_table :furnitures do |t|
      t.string :name
      t.string :material
      t.string :color
      t.string :type_of_furniture
      t.string :description
      t.date :date_of_manufacture

      t.timestamps
    end
  end
end
