class CreateTableBookmark < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :business, foreign_key: true
    end
  end
end
