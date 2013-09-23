require_relative '../../test_helper'

describe Primes do
  it "must be defined" do
    Primes::VERSION.wont_be_nil
  end
end
