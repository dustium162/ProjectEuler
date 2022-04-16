require 'prime'
def check(i)
  if Prime.prime?(i)
    num_l = i.to_s.chars
    num_r = i.to_s.chars
    while num_l.size != 0
      return false if !Prime.prime?(num_l.join.to_i)
      num_l.shift
    end
    while num_r.size != 0
      return false if !Prime.prime?(num_r.join.to_i)
      num_r.pop
    end
    true
  else
    false
  end
end
i = 10
ans = 0
count = 0
list = []
while true
  if check(i)
    count += 1
    ans += i
    list << i
  end
  break if count == 11
  i += 1
end
puts ans
