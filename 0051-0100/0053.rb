def factorial(n)
  i = 0
  k = 1
  while i < n
    k *= i + 1
    i += 1
  end
  k
end

def combination(n,r)
  factorial(n) / (factorial(r) * factorial(n-r))
end

def check(n,r)
  combination(n,r) > 1000000
end

ans = 0
n = 1
while n <= 100
  r = 0
  while r < n
    ans += 1 if check(n,r)
    r += 1
  end
  n += 1
end
puts ans