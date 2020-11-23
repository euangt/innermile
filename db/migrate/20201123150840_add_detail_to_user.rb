class AddDetailToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :bio, :string
    add_column :users, :address, :string
    add_column :users, :business_owner, :boolean
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
