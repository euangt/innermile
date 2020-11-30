class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.references :business, null: false, foreign_key: true
      t.date :date
      t.string :time
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
