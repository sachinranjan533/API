class AddColumnsToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :student_id, :student_id
  end
end
