class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    # execute "CREATE EXTENSION \"uuid-ossp\";"
    create_table :users, id: false do |t|
      t.uuid :id, primary_key: true, default: "uuid_generate_v4()", null:false
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :picture
      t.string :location
      t.text :bio
      t.string :latitude
      t.string :longitude
      t.integer :score

      t.timestamps
    end
  end
end
