class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # t.string :provider
      # t.string :uid
      t.string :username
      # t.string :oauth_token
      # t.datetime :oauth_expires_at
      # t.string :email
      t.integer :party_id
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
