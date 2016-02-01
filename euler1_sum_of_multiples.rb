class Euler1SumOfMultiples
  def initialize(*baseNumbers)
    @baseNumbers = baseNumbers
  end

  def sumOfMultiples(upperLimit)
    (1..upperLimit-1)
      .select{|num| @baseNumbers.any? {|base| num % base == 0}}
      .reduce(:+)
  end
end

calculator = Euler1SumOfMultiples.new(3, 5)
puts calculator.sumOfMultiples(1000)