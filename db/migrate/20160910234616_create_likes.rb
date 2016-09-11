class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.string :liker_id, foreign_key: true
      t.boolean :liked
      t.string :likee_id, foreign_key: true

      t.timestamps
    end
  end
end
