class AddColumnToBusinesses < ActiveRecord::Migration[6.0]
  def change
    add_reference :businesses, :category, null: false, foreign_key: true
  end
end
