class AddBelongsToToUser < ActiveRecord::Migration
      def up
          remove_column :posts, :user_id
      end

      def down
        change_table :posts do |t|
          t.belongs_to :user, index: true
          t.change_column :title, :string
          t.change_column :content, :string
        end
  end
end
