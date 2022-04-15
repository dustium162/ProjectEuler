list = [1,1]
i = 2
while true
  i += 1
  break if list[-1] + list[-2] >= 10**999
  list << list[-1] + list[-2]
end
puts i