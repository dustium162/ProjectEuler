i = 1
sum_sq = 0
sq_sum = 0
while i <= 100
  sum_sq += i**2
  sq_sum += i
  i += 1
end
sq_sum *= sq_sum
puts sq_sum - sum_sq