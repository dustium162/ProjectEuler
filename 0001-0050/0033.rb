def check(a,b)
  return false if a.to_s[0] == b.to_s[0]
  return false if a.to_s[1] == b.to_s[1]
  return false if a.to_s.include?("0")
  return false if b.to_s.include?("0")
  (a.to_s.chars & b.to_s.chars).each do |n|
    c = (a.to_s[0] == n ? a.to_s[1] : a.to_s[0]).to_i
    d = (b.to_s[0] == n ? b.to_s[1] : b.to_s[0]).to_i
    return true if a * d == b * c
  end
  return false
end

list = []
a = 10
while a < 99
  b = a + 1
  while b < 100
    list << [a,b] if check(a,b)
    b += 1
  end
  a += 1
end
numerator = 1
denominator = 1
list.each do |n,d|
  numerator *= n
  denominator *= d
end
puts denominator / denominator.gcd(numerator)