# TODO Optimize
class SuperFib
  attr_accessor :arr

  def initialize(arr)
    self.arr = arr
  end

  def process!
    self.arr.map { |item| fib(item) }
  end

  def fib(n)
    n < 2 ? n : fib(n-1) + fib(n-2)
  end
end
