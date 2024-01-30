class CreateRealisations < ActiveRecord::Migration[7.1]
  def change
    create_table :realisations do |t|
      t.string :name
      t.string :description
      t.date :date_of_realisation
      t.string :type_of_realisation

      t.timestamps
    end
  end
end
