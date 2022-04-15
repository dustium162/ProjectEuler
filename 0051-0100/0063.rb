ans = 1
b = 2
while b < 10
  e = 1
  while (b**e).to_s.size <= e
    ans += 1 if (b**e).to_s.size == e
    e += 1
  end
  b += 1
end
puts ans