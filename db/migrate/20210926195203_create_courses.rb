class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :professor
      t.integer :course_id

      t.timestamps
    end
  end
end
