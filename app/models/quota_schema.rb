class QuotaSchema < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  # TODO has_many :quotas through quota_schema_quota
  attr_accessible  :name
  
  cattr_reader :per_page
  @@per_page = 10
end
