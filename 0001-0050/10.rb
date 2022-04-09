require 'prime'
sum = 0
i = 2
while i < 2000000
  sum += i if Prime.prime?(i)
  i += 1
end
puts sum