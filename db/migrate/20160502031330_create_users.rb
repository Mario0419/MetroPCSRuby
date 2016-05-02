class CreateUsers < ActiveRecord::Migration
    def up
        add_column :users, :username, :string
    end
  def change
      add_column :users, :username, :string
      add_column :users, :email, :string
    create_table :users do |t|
        t.string :username
        t.string :email
        t.string :encrypted_password
        t.timestamps null: false
    end
  end
end
