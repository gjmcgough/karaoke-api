class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :facebook_id
      t.string :token
      t.integer :party_id

      t.timestamps null: false
    end
  end
end
