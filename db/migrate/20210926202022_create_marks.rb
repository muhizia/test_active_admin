class CreateMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.string :marks
      t.string :units
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
