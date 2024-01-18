class CreateAccessories < ActiveRecord::Migration[7.1]
  def change
    create_table :accessories do |t|
      t.string :name
      t.string :description
      t.string :material
      t.string :type_of

      t.timestamps
    end
  end
end
