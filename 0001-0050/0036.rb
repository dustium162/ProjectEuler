def check(s)
  size = s.size
  flag = true
  i = 0
  while i <= (size - 1) / 2
    flag = false if s[i] != s[size-1-i]
    i += 1
  end
  flag
end
ans = 0
i = 1
while i < 1000000
  ans += i if check(i.to_s) && check(i.to_s(2))
  i += 1
end
puts ans