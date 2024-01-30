class RemoveLocalisationFromRealisations < ActiveRecord::Migration[7.1]
  def up
    execute "ALTER TABLE realisations DROP COLUMN IF EXISTS localisation"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
