class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  before_save :populate_permalink
  
  validates_presence_of :name
  
  def to_param
    "#{id}-#{permalink}"
  end
  
  private
  
  def populate_permalink
    self.permalink = ERB::Util.url_encode(product.name)
  end
end
