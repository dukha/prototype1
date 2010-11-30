class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.integer :course_type_id
      t.date :begin_date
      t.date :end_date
      t.integer :location_id
      t.boolean :old_students_only

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
