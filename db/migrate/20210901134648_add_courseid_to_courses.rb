class AddCourseidToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :course_id, :string, default "CS"
  end
end