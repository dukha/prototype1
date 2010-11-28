class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.integer :course_type_id
      t.date :begin_date
      t.date :end_date
      t.integer :location_id
      t.integer :active_status_id
      t.boolean :old_students_only
      t.integer :course_type_id
      t.string :start_time
      t.string :end_time
      t.integer :assistant_teacher_id
      t.integer :assistant_teacher_special_cases_id
      t.string :assistant_teacher_email
      t.integer :male_quota_status_id
      t.integer :female_quota_status_id
      t.integer :reconfirmation_days
      t.integer :quota_from_initial_to_actual_days
      t.string :registrar_email
      t.boolean :welcome_letter_sent
      t.boolean :exported_to_os_database
      t.date :no_applications_before
      t.integer :quota_schema

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
