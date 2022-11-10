class CreateReviewsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews_tables do |t|
      t.column :content_body, :string
      t.column :user_id, :integer
      t.column :destination_id, :integer
      t.column :rating, :integer
      t.timestamps
    end
  end
