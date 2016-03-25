class Project < ApplicationRecord
  has_many :tasks
  validates :name, presence: true
  
  def self.all_names
    all.collect(&:name)
  end
end
