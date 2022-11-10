class Addforeignkeyfordestinations < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :destinations
  end
end
