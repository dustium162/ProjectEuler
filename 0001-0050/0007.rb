require 'prime'
count = 0
i = 2
while true
  count += 1 if Prime.prime?(i)
  break if count == 10001
  i += 1
end
puts i