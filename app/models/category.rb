class Category < ActiveRecord::Base
  attr_accessible :desc, :name, :num1, :num2, :user1, :user2
  validates :name, :desc, presence: true
  
  has_many :products, dependent: :destroy
  
end
