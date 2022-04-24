def d(n)
  sqrt = Math.sqrt(n).ceil
  list = []
  i = 1
  while i <= sqrt
    if n % i == 0
      list << n/i
      list << i
    end
    i += 1
  end
  list.uniq!
  list.sort!
  list.pop
  list.sum
end

def is_amicable(n)
  n == d(d(n)) && n != d(n)
end
ans = 0
n = 2
while n < 10000
  ans += n if is_amicable(n)
  n += 1
end
puts ans