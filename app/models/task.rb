class Task < ApplicationRecord
  belongs_to :project, counter_cache: true
  has_many :comments

  validates :due_date, date: true

  paginates_per  5
  
  def self.incomplete
    where(complete: false).order('id DESC')
  end

  def self.complete
    where(complete: true).order('id DESC')
  end  
  
  def self.search(term, current_page)
    if term
      where('name LIKE ?', "%#{term}%").order('id DESC').page(current_page)
    else
      # note: default is all, just sorted
      order('id DESC').page(current_page) 
    end
  end
  
end
