k = 1
i = 1
while i < 100
  k *= i + 1
  i += 1
end
puts k.to_s.chars.map(&:to_i).sum