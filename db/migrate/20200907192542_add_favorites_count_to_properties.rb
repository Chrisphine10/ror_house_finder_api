class AddFavoritesCountToProperties < ActiveRecord::Migration[6.0]
  def self.up
    add_column :properties, :favorites_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :properties, :favorites_count
  end
end
