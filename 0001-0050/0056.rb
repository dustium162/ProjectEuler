ans = 0
a = 1
while a < 100
  b = 1
  while b < 100
    num = (a**b).to_s.chars.map(&:to_i).sum
    ans = num if ans < num
    b += 1
  end
  a += 1
end
puts ans