a = 3
b = 2
ans = 0
n = 1
while n <=1000
  a += b
  a,b = b,a
  a += b
  ans += 1 if a.to_s.size > b.to_s.size
  n += 1
end
puts ans