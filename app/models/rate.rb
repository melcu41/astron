class Rate < ActiveRecord::Base
  attr_accessible :operatorname, :operatorsymbol, :rateamt, :ratepercent
  validates :operatorname, :operatorsymbol, :rateamt, presence: true
end
