class RemoveColumnCoverUrlFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :cover_photo, :string
  end
end
