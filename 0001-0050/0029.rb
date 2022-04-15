list = []
a = 2
while a <= 100
  b = 2
  while b <= 100
    list << a**b
    b += 1
  end
  a += 1
end
puts list.uniq.size