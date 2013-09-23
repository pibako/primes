class Fixnum < Integer
  # The simple prime implementation taken from SICP book.
  # The complexity of this algorithm is O(sqrt(n))

  # Since this is a dedicated tool I don't care adding prime? method to Fixnum.
  def prime?
    self < 2 ? false : self == smallest_divisor
  end

  private

  def smallest_divisor
    find_divisor(2)
  end

  def find_divisor(test_divisor)
    if test_divisor**2 > self
      self
    elsif divides?(test_divisor)
      test_divisor
    else
      find_divisor(test_divisor + 1)
    end
  end

  def divides?(a)
    0 == self % a
  end
end
