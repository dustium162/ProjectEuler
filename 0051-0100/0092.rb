def check(n)
  num = n
  while num != 1 && num != 89
    num = num.to_s.chars.map(&:to_i).map{|num| num**2}.sum
  end
  num == 89
end
ans = 0
n = 1
while n < 10000000
  ans += 1 if check(n)
  n += 1
end
puts ans