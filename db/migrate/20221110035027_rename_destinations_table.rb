class RenameDestinationsTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :destinations_tables, :destinations
  end
end
