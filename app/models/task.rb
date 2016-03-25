class Task < ApplicationRecord
  belongs_to :project, counter_cache: true
  has_many :comments

  validates :due_date, date: true
  
  def self.find_incomplete(limit: 1)
    where(complete: false).order('created_at DESC').limit(limit)
  end
  
  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%").order('id DESC')
    else
      # note: default is all, just sorted
      order('id DESC') 
    end
  end
  
end
