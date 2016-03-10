class Project < ApplicationRecord
  has_many :tasks
  
  def self.all_names
    all.collect(&:name)
  end
end
