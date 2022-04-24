# The number of subrectangles that an A x B rectangle contains is A*(A+1)*B*(B+1)/4
def num(a,b)
  a*(a+1)*b*(b+1)/4
end
a = 1
diff = 10**10
ans = 0
while a <= 2000
  b = 1
  while num(a,b) < 2000000
    num = num(a,b)
    if diff > 2000000-num
      diff = 2000000-num
      ans = a*b
    end
    b += 1
  end
  if diff > num(a,b) - 2000000
    diff = num(a,b) - 2000000
    ans = a*b
  end
  a += 1
end
puts ans