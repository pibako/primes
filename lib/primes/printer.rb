module Primes
  class Printer
    attr_accessor :primes
    def initialize(primes)
      @primes = primes
    end

    def print
      print_header
      print_lines
    end

    def print_header
      puts header
    end

    def print_lines
      primes.each do |prime|
        puts line_for_prime(prime)
      end
    end

    def header
      "\t" << primes.map(&:to_s).join("\t")
    end

    def line_for_prime(prime)
      prime.to_s << "\t" << products_for(prime).join("\t")
    end

    def products_for(prime)
      primes.map {|p| prime * p}
    end
  end
end
