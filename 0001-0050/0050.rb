require 'prime'
using_primes = []
unused_primes = []
sum = 0
Prime.each(1000000) do |prime|
  if sum + prime < 1000000
    using_primes << prime
    sum += prime
  else
    unused_primes << prime
  end
end
max_size = using_primes.size
size = max_size
ans = sum
puts ans
while prime = unused_primes.shift
  while sum + prime >= 1000000
    break if using_primes.size == 0
    sum -= using_primes.shift
    size -= 1
  end
  sum += prime
  size += 1
  if size > max_size
    max_size = size
    ans = sum
  end
  break if using_primes.size == 0
end
puts ans