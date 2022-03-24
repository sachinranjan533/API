class AddColumnsToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :name, :string
    add_column :students, :contact_no, :text
  end
end
