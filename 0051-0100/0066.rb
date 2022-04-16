def is_squared(num)
  n = 1
  while n**2 < num
    n += 1
  end
  n**2 == num
end
max = 0
ans = 0
d = 2
while d <= 1000
  if !is_squared(d)
    y = 1
    while true
      num = d*(y**2) + 1
      sqrt = Math.sqrt(num).floor
      while sqrt**2 < num
        sqrt += 1
      end
      break if sqrt**2 == num
      y += 1
    end
    if max < d*(y**2) + 1
      max = d*(y**2) + 1
      ans = d
    end
    puts d
  end
  d += 1
end
puts ans