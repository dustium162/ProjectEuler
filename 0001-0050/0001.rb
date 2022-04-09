three = 3
five = 5
list = []
while three < 1000
  list << three
  three += 3
end
while five < 1000
  list << five
  five += 5
end
puts list.uniq.sum
