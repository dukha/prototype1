# == Schema Information
# Schema version: 20101120032335
#
# Table name: course_types
#
#  id               :integer         not null, primary key
#  oldcode          :string(255)
#  translation_code :string(255)
#  name             :string(255)
#  description      :string(255)
#  last_day         :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class CourseType < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :translation_code, :presence => true, :uniqueness => true
  validates :description, :presence => true
  validates :last_day, :presence => true
  
  attr_accessible :translation_code, :name, :description, :last_day, :oldcode
  
  cattr_reader :per_page
  @@per_page = 10

end
