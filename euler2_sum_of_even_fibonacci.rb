def nextFibo(numList, upperLimit)
  if numList.empty? then
    nextFibo([1], upperLimit)
  elsif numList.length == 1 then
    nextFibo([1, 2], upperLimit)
  elsif numList[-1] >= upperLimit
    numList[0..-2]
  else
    nextFibo(numList.concat([numList[-2] + numList[-1]]), upperLimit)
  end
end

puts nextFibo([], 4000000).select{|x| x % 2 == 0}.reduce(:+)

