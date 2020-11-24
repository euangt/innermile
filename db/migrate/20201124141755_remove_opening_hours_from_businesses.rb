class RemoveOpeningHoursFromBusinesses < ActiveRecord::Migration[6.0]
  def change
    remove_column :businesses, :opening_hours, :time
  end
end
