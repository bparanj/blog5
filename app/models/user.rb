class User < ApplicationRecord
  def full_name
    name = first_name + ' '
    name << "#{middle_initial}. " unless middle_initial.nil?
    name << last_name
  end
end
