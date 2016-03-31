class RemoveColumnProfPicFromUsers < ActiveRecord::Migration
  def change
    remove_column :posts, :cover_url, :string
  end
end
