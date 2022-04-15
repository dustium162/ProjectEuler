# Since n*(2*n-1) = (2*n)*(2*n-1)/2, all Hexagonal numbers are triangle number.
def T(n)
  n*(n+1)/2
end

def P(n)
  n*(3*n-1)/2
end

def is_squared(n)
  i = 0
  while i**2 < n
    i += 1
  end
  i**2 == n
end

n = 166
while true
  break if is_squared(P(n) - T(n-1))
  n += 1
end
puts P(n)

i = 0
while i < 30
  puts i if is_squared(i)
  i += 1
end