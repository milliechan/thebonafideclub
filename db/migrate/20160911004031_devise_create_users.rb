class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    # execute "CREATE EXTENSION \"uuid-ossp\";"
    create_table :users, id: false do |t|

      t.uuid :id, primary_key: true, default: "uuid_generate_v4()", null:false
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip



      # t.string :email
      # t.string :password_digest
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
    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
