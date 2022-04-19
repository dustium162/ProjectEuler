# 9! = 362880 is a 6 digit number which means that any 8 or more digit number can't expressed as a sum of the factorial of their digits because 9! * 8 < 10**7 (although 9! * 7 > 10**6 which means that 7 digit number can be expressed as the same manner.)
def factorial(n)
  k = 1
  i = 0
  while i < n
    k *= i + 1
    i += 1
  end
  k
end
sum = 0
n = 3
while n < 10000000
  num =  n.to_s.chars.map(&:to_i).map{|num| factorial(num)}.sum
  sum += num if num == n
  n += 1
end
puts sum