class Createcommentstable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    t.integer :user_id
    t.integer :post_id
    t.string :text
    t.datetime :created_at
    t.datetime :updated_at
  end
  end
end
