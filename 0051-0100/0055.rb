def is_palindrome(n)
  n_s = n.to_s
  size = n_s.size
  i = 0
  flag = true
  while i < size/2
    flag = false if n_s[i] != n_s[size-1-i]
    i += 1
  end
  flag
end

# while true
#   num = gets.to_i
#   puts is_palindrome(num) ? "OK" : "NG"
# end

def check(n)
  num = n
  count = 0
  while count < 50
    num = num + num.to_s.chars.reverse.join.to_i
    return false if is_palindrome(num)
    count += 1
  end
  true
end

ans = 0
n = 1
while n < 10000
  ans += 1 if check(n)
  n += 1
end
puts ans