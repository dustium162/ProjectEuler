def is_square(n)
  i = 1
  while i**2 < n
    i += 1
  end
  i**2 == n
end
m = 100
list = []
a = 1
while a <= m
  b = a
  while b <= m
    c = b
    while c <= m
      list << [a,b,c] if is_square(a**2 + (b+c)**2)
      list << [a,b,c] if is_square(b**2 + (a+c)**2)
      list << [a,b,c] if is_square(c**2 + (a+b)**2)
      c += 1
    end
    b += 1
  end
  a += 1
end
puts list.uniq.size