def factorial(n)
  i = 0
  k = 1
  while i < n
    k *= i + 1
    i += 1
  end
  k
end

def calc(n)
  n.to_s.chars.map(&:to_i).map{|num| factorial(num)}.sum
end

def check(n)
  num = n
  hash = {}
  length = 0
  while true
    hash[num] = true
    num = calc(num)
    length += 1
    break if hash[num]
  end
  length == 60
end
ans = 0
n = 1
while n < 1000000
  ans += 1 if check(n)
  n += 1
end
puts ans