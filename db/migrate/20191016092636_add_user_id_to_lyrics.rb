class AddUserIdToLyrics < ActiveRecord::Migration[5.2]
  def change
    add_column :lyrics, :user_id, :integer
  end
end
