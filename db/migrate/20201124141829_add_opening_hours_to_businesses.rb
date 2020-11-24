class AddOpeningHoursToBusinesses < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :opening_hours, :string
  end
end
