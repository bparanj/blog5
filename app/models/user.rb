class User < ApplicationRecord
  validates_presence_of :first_name
  
  def full_name
    name = first_name + ' '
    name << "#{middle_initial}. " if middle_initial.present?
    name << last_name
  end
end
