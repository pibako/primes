require_relative '../../test_helper'

class TestFixnum < Minitest::Test
  def test_prime_implementation
    require 'prime'
    1.upto(100).each do |nr|
      assert_equal Prime.prime?(nr), nr.prime?
    end
  end
end
