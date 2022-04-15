ans = 1
upper_left = []
i = 1
while (2*i+1)**2 <= 1001*1001
  ans += (2*i)**2 - (2*i-1)
  ans += (2*i)**2 + 1
  ans += (2*i+1)**2 - (2*i)
  ans += (2*i+1)**2
  i += 1
end
puts ans