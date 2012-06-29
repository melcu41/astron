class Customer < ActiveRecord::Base
  attr_accessible :address, :contactno, :contactperson, :email, :name
  validates :address, :name, presence: true
  
  has_many :joborder
end
