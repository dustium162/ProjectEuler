require 'prime'
i = 0
num = 1
primes = 0
while true
  i += 1
  num += 4
  primes += 1 if Prime.prime?((2*i+1)**2 - (2*i))
  primes += 1 if Prime.prime?((2*i)**2 + 1)
  primes += 1 if Prime.prime?((2*i)**2 - (2*i-1))
  break if 10 * primes < num
end
puts 2*i + 1