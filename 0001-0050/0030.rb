# 7 * (9**5) = 413343 is 6 digit number which means that any 7 digit number can't be expressed as a sum of fifth powers of their digits.
def check(n)
  n == n.to_s.chars.map(&:to_i).map{|num| num**5 }.sum
end
list = []
n = 2
while n < 1000000
  list << n if check(n)
  n += 1
end
puts list.sum