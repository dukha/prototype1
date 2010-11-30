class Course < ActiveRecord::Base
  validates :course_type_id, :presence => true
  validates :begin_date, :presence => true
  validates :end_date, :presence => true
  validates :location_id, :presence => true
  
  belongs_to :course_type, :class_name=>"CourseType", :foreign_key=>"course_type_id"
  belongs_to :location, :class_name=>"Location", :foreign_key=>"location_id"

  attr_accessible :course_type_id, :begin_date, :end_date, :location_id, :old_students_only 
  
  cattr_reader :per_page
  @@per_page = 20
end
