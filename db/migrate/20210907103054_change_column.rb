class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :courses, :course_id, :string
  end
end
