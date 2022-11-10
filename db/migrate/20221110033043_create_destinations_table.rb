class CreateDestinationsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations_tables do |t|
      t.column :city, :string
      t.column :country, :string
      t.column :overall_rating, :integer
      t.timestamps
    end
  end
end
