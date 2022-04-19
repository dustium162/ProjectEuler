# The number of subrectangles that an A x B rectangle contains is A*(A+1)*B*(B+1)/4
a = 1
ans = 10**10
ans_a = 0
ans_b = 0
while a <= 2000
  b = 1
  while a*(a+1)*b*(b+1)/4 < 2000000
    b += 1
  end
  if a*(a+1)*b*(b+1)/4 - 2000000 < 2000000 - a*(a+1)*b*(b-1)/4
    ans = a*(a+1)*b*(b+1)/4 - 2000000 if ans > a*(a+1)*b*(b+1)/4 - 2000000
  else
    ans = 2000000 - a*(a+1)*b*(b-1)/4 if ans > 2000000 - a*(a+1)*b*(b-1)/4
  end
  a += 1
end
puts ans