ans = 0
n = 1
while n <=1000
  ans = (ans + n.pow(n,10**10)) % 10**10
  n += 1
end
puts ans
