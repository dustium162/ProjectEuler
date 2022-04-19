require 'prime'
max = 0
n = 2
while n <= 1000000
  phi = 1
  Prime.prime_division(n).each do |prime,exp|
    phi *= exp + 1
  end
  
  n += 1
end