class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.boolean :liked
      t.integer :match_id

      t.timestamps
    end
  end
end
