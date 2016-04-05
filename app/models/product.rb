class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  
  validates_presence_of :name
  
  def to_param
    "#{id}-#{permalink}"
  end
  
  private
  
  def permalink
    name.gsub(/[^a-z1-9]+/i, '-')
  end
end
