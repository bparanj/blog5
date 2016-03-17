class Task < ApplicationRecord
  belongs_to :project, counter_cache: true
  has_many :comments
  
  def self.find_incomplete(limit: 1)
    where(complete: false).order('created_at DESC').limit(limit)
  end

end
