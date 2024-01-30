class RemoveCreationDateFromFurnitures < ActiveRecord::Migration[7.1]
  def change
    remove_column :furnitures, :creation_date, :date
  end
end
