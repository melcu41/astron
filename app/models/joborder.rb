class Joborder < ActiveRecord::Base
  attr_accessible :customer_id, :desc, :joborderid
  validates :customer_id, :desc, :joborderid, presence: true
  
  belongs_to :customer
end
