class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :first
      t.string :last
      t.date :submitDate
      t.string :phone
      t.string :email
      t.text :info

      t.timestamps null: false
    end
  end
end
