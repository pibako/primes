require_relative '../test_helper'

class TestPrimes < Minitest::Test
  def test_first_n_primes
    assert_equal [2,3,5,7,11,13,17], Primes.first(7)
  end
end
