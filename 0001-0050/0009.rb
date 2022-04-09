a = 1
while a < 1000
  b = 1
  while a + b < 1000
    puts a*b*(1000-a-b) if (a**2 + b**2 == (1000-a-b)**2)
    b += 1
  end
  a += 1
end