require 'prime'
list = []
i = 2
while i < 1000000
  list << i if Prime.prime?(i)
  i += 1
end
ans = []
list.each do |num|
  size = num.to_s.size
  flag = true
  s_num = num.to_s.chars
  (size-1).times do
    s_num = s_num.unshift(s_num.pop)
    flag = false if !Prime.prime?(s_num.join.to_i)
  end
  ans << num if flag
end
puts ans.size
