class AddFKtoPosts < ActiveRecord::Migration
  def change
      change_table :posts do |t|
        t.belongs_to :user, index: true
        t.change :title, :string
        t.change :content, :string
      end
  end
end
