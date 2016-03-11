require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full name without middle initial" do
    user = sample_user(middle: nil)
    assert_equal 'Bugs Bunny', user.full_name
  end
  
  test "full name with middle initial" do
    user = sample_user
    assert_equal 'Bugs C. Bunny', user.full_name
  end

  test "full name with blank middle initial" do
    user = sample_user(middle: '')
    assert_equal 'Bugs Bunny', user.full_name
  end
  
  def sample_user(first: 'Bugs', middle: 'C', last: 'Bunny')
    User.new(first_name: first, middle_initial: middle, last_name: last)
  end
end
