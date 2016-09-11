class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user_id
      t.boolean :liked
      t.references :user_id

      t.timestamps
    end
  end
end
