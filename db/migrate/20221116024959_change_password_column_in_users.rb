class ChangePasswordColumnInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users ,:password_hash
    remove_column :users , :password_salt
  
    add_column :users, :password_digest, :string, null: false
  end
end
