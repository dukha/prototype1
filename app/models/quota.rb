class Quota < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :quota, :presence => true, :uniqueness => false
  validates :initial_quota, :presence => true, :uniqueness => false
  
  attr_accessible  :name, :initial_quota, :quota
  
  # TODO has_many :quotas_schemas through quota_schema_quota
  cattr_reader :per_page
  @@per_page = 15
  
end
