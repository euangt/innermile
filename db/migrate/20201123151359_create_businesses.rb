class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :short_bio
      t.text :long_bio
      t.string :owner_name
      t.text :owner_bio
      t.string :address
      t.string :telephone
      t.string :email
      t.time :opening_hours
      t.boolean :accept_cards
      t.float :latitude
      t.float :longitude
      t.string :website_url
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
