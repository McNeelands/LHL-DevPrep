class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :title, :string
    add_column :users, :bio, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :slack, :string
    add_column :users, :git, :string
  end
end
