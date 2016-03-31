class Addcolumnurltoposts < ActiveRecord::Migration
  def change
    add_column :posts, :cover_url, :string
  end
end
