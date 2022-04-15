def factorial(n)
  i = 0
  k = 1
  while i < n
    k *= i + 1
    i += 1
  end
  k
end

def combination(n,m)
  factorial(n) / (factorial(m) * factorial(n-m))
end

ans = 0
i = 1
while i < 100
  4c1 + 4c2 + 4c3 = 