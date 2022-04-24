# https://gist.github.com/hyuki0000/f576912ba328ec2c266278d812f5f059
require 'prime'

def phi(n)
  return 1 if n == 1
  Prime.each(n-1) do |prime|
    if n % prime == 0
      b = n
      exp = 0
      while b % prime == 0
        b /= prime
        exp += 1
      end
      return prime**(exp-1) * (prime-1) * phi(b)
    end
  end
  return n-1
end

def check(n)
  phi(n).to_s.chars.sort == n.to_s.chars.sort
end

n = 2
min = 10**10
ans = 0
while n < 10000000
  if check(n) && min * phi(n) > n
    min = n/phi(n).to_f 
    ans = n
  end
  if n == 87109
    puts phi(n)
  end
  n += 1
  puts n
end
puts ans