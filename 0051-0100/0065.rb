list = [2]
33.times do |i|
  list << 1
  list << 2*(i+1)
  list << 1
end
a = list.pop
b = 1
list.reverse.each do |num|
  a,b = b,a
  a += num*b
end
puts a.to_s.chars.map(&:to_i).sum