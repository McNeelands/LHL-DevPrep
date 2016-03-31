class CreatePrepCourses < ActiveRecord::Migration
  def change
    create_table :prep_courses do |t|
      t.string :title
      t.string :description
      t.string :text

      t.timestamps null: false
    end
  end
end
