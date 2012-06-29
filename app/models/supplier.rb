class Supplier < ActiveRecord::Base
  attr_accessible :address, :contactno, :contactperson, :email, :name
  validates :name, :address, presence: true
end
