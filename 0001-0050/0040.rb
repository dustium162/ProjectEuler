sum = 0
ans = 1
mem = 1
i = 1
while true
  sum += i.to_s.size
  if sum >= mem
    ans *= i.to_s[i.to_s.size - sum + mem - 1].to_i
    mem *= 10
  end
  if sum >= 1000000
    break
  end
  i += 1
end
puts ans