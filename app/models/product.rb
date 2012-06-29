class Product < ActiveRecord::Base
  attr_accessible :category_id, :desc, :name
  validates :name, :desc, :category_id, presence: true
  
  belongs_to :category
end
