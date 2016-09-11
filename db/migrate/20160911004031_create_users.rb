class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :picture
      t.string :location
      t.text :bio
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
