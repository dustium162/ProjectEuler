list = [1,2]
while list[-1] <= 4000000
  list << list[-2] + list[-1]
end
list.pop
puts list.filter{|num| num%2 == 0}.sum
