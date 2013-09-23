require_relative "../../test_helper"

class TestPrinter < Minitest::Test
  def test_header_for_different_sizes
    printer = Primes::Printer.new([2,3,5])
    assert_equal "\t2\t3\t5", printer.header
    printer = Primes::Printer.new([2,3,5,7])
    assert_equal "\t2\t3\t5\t7", printer.header
    printer = Primes::Printer.new([2,3,5,7,11])
    assert_equal "\t2\t3\t5\t7\t11", printer.header
  end

  def test_products_for_prime_for_different_numbers
    printer = Primes::Printer.new([2,3,5])
    assert_equal [4,6,10], printer.products_for(2)
    assert_equal [6,9,15], printer.products_for(3)
    assert_equal [10,15,25], printer.products_for(5)
  end

  def test_line_for_prime_for_different_numbers
    printer = Primes::Printer.new([2,3,5])
    assert_equal "2\t4\t6\t10", printer.line_for_prime(2)
    assert_equal "3\t6\t9\t15", printer.line_for_prime(3)
    assert_equal "5\t10\t15\t25", printer.line_for_prime(5)
  end
end
