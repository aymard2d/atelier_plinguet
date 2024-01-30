class AddManufactureDateToAccessories < ActiveRecord::Migration[7.1]
  def change
    add_column :accessories, :manufacture_date, :date
  end
end
