class CreateTwitterAccounts < ActiveRecord::Migration
  def change
    create_table :twitter_accounts do |t|
      t.integer :user_id
      t.string :username
      t.string :token
      t.string :secret
      t.string :image_url

      t.timestamps
    end
  end
end
