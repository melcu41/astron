class Unit < ActiveRecord::Base
  attr_accessible :unitname, :unitsymbol
  validates :unitname, :unitsymbol, presence: true
end
