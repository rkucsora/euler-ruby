class PrimeGenerator
  def initialize()
    @foundPrimes = []
  end

  def next
    if @foundPrimes.size ==0 then
      @foundPrimes << 2
    else
      candidate = @foundPrimes[-1] + 1
      while @foundPrimes.any?{|p| candidate % p == 0} do
        candidate += 1
      end
      @foundPrimes << candidate
    end
    return @foundPrimes[-1]
  end

end

num = 600851475143
# num = 13195

primeGenerator = PrimeGenerator.new

currentPrime = primeGenerator.next
while num > 1 do
  while num % currentPrime != 0 do
    currentPrime = primeGenerator.next
  end
  num = num / currentPrime
end
puts currentPrime
