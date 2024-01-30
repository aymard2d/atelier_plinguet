class AddCreationDateToFurnitures < ActiveRecord::Migration[7.1]
  def change
    add_column :furnitures, :creation_date, :date
  end
end
