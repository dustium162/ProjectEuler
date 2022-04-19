require 'prime'
def count_primes(n)
  Prime.prime_division(n).size
end
a1 = 1
while true
  a2 = a1 + 1
  a3 = a2 + 1
  a4 = a3 + 1
  if count_primes(a1) == 4 && count_primes(a2) == 4 && count_primes(a3) == 4 && count_primes(a4) == 4
    puts a1
    exit
  end
  a1 += 1
end
