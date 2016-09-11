class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    execute "CREATE EXTENSION \"uuid-ossp\";"
    create_table :matches, id: false do |t|
      t.uuid :id, primary_key: true, default: "uuid_generate_v4()", null: false
      t.integer :user_id
      t.integer :match_id

      t.timestamps
    end
    add_index :matches, :id
  end
end
