def check(a,b)
  x1,y1 = a
  x2,y2 = b
  if x1*y2 - x2*y1 != 0
    (x1*x2 + y1*y2) * ((x2 - x1)*x1 + (y2 - y1)*y1) * ((x2 - x1)*x2 + (y2 - y1)*y2) == 0
  else
    false
  end
end

points = []
x = 0
while x <= 50
  y = 0
  while y <= 50
    points << [x,y]
    y += 1
  end
  x += 1
end
 
ans = 0
points.combination(2).each do |a,b|
  ans += 1 if check(a,b)
end
puts ans