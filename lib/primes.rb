require "primes/version"
require "primes/fixnum"
require_relative "./primes/printer"

module Primes
  class << self
    def first(n)
      primes = []
      nr = 2
      while n > primes.length
        primes << nr if nr.prime?
        nr +=1
      end
      primes
    end

    # e.g. print table for n = 3
    # __2_3_5
    # 2_4_6_10
    # 3_6_9_15
    # 5_10_15_25
    def print_table(n)
      printer = Printer.new(first n)
      printer.print
    end
  end
end
