class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_title
      t.text :course_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
