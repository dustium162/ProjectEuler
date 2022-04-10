ans = 1
i = 40
while i > 20
  ans *= i
  i -= 1
end
while i > 0
  ans /= i
  i -= 1
end
puts ans