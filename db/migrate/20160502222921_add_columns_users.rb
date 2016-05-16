class AddColumnsUsers < ActiveRecord::Migration
  def change
      add_column :users, :email, :string 
      add_column :users, :username, :string
      add_column :users, :encrypted_password, :string
  end
    def down
        drop_table :users
    end
end
