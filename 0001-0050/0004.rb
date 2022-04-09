def check(n)
  s = n.to_s.chars
  size = s.size
  flag = true
  i = 0
  while i < size/2
    flag = false if s[i] != s[size-i-1]
    i += 1
  end
  flag
end
max = 0
a = 100
while a < 1000
  b = 100
  while b < 1000
    max = a*b if check(a*b) && a*b > max
    b += 1
  end
  a += 1
end
puts max