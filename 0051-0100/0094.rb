squares = []
a = 333333333
max =  Math.sqrt(3*(a**2) + 8*a + 4).ceil
n = 1
while n <= max
  squares << n**2
  n += 1
end
ans = 0
a = 1
while a <= 333333333
  a_square = 3*(a**2) + 8*a + 4
  a_square_num = squares.bsearch{|num| num >= a_square}
  ans += 3*a + 2 if (a_square == a_square_num) && ((a*a_square) % 4 == 0)
  b_square = 3*(a**2) - 8*a + 4
  b_square_num = squares.bsearch{|num| num >= b_square}
  ans += 3*a - 2 if (b_square == b_square_num) && ((a*b_square) % 4 == 0)
  a += 1
end
puts ans