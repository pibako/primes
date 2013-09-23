require_relative '../test_helper'

class TestPrimes < Minitest::Test
  def test_first_n_primes
    assert_equal [2,3,5,7,11,13,17], Primes.first(7)
  end

  def test_nth_prime_number
    [2,3,5,7,11,13].each_with_index do |prime, index|
      assert_equal prime, Primes.nth(index+1)
    end
  end
end
