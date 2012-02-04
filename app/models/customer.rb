class Customer < ActiveRecord::Base
  has_many :users

  validates :name, presence: true
  validates :description, presence: true
  
  attr_protected :user
end