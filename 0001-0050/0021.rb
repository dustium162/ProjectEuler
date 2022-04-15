def d(n)
  sqrt = Math.sqrt(n).ceil
  list = []
  i = 1
  while i <= sqrt
    if n % i == 0
      list << i
      list << n/i
    end
    i += 1
  end
  list.uniq!
  list.sort!
  list.pop
  list.sum
end
list = []
a = 1
while a <= 10000
  list << d(a)
  a += 1
end
k = 0
ans = 0
checker = Array.new(100000) {-1}
while k <= 10000
  checker[list[k]] = k
  if checker[k] != -1
    ans += k if k <= 10000
    ans += list[k] if list[k] <= 10000
  end
  k += 1
end
puts ans