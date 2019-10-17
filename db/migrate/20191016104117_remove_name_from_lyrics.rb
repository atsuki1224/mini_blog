class RemoveNameFromLyrics < ActiveRecord::Migration[5.2]
  def change
    remove_column :lyrics, :name, :string
  end
end
