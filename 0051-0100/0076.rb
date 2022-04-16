list = [2]
i = 0
while i < 10
  list << list.sum - 1
  i += 1
end
p list