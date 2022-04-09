lcm = 1
n = 2
while n <= 20
  lcm = n.lcm(lcm)
  n += 1
end
puts lcm