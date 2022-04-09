require 'prime'
prime = 600851475143
sqrt = Math.sqrt(prime).ceil
factor_list = []
n = 2
while n <= sqrt 
  factor_list << n if prime % n == 0
  n += 1
end
puts factor_list.filter{|num| Prime.prime?(num)}.max