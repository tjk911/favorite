class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.integer :twitter_account_id
      t.string :text

      t.timestamps
    end
  end
end
