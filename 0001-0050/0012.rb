require 'prime'
n = 1
sum = 0
while true
  sum += n
  count = 1
  Prime.prime_division(sum).each do |prime,pow|
    count *= pow + 1
  end
  if count > 500
    puts sum
    exit
  end
  n += 1
end