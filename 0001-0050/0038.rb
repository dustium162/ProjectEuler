def check(i)
  checker = Array.new(9) {false}
  j = 1
  flag = true
  concat = ""
  while true
    (i * j).to_s.chars.map(&:to_i).each do |num|
      if checker[num-1] || num == 0
        flag = false
      else
        checker[num-1] = true
        concat += num.to_s
      end
    end
    j += 1
    break if checker.all?(true) || !flag
  end
  flag && concat
end
max = 0
i = 1
while i < 100000
  if concat = check(i)
    max = concat.to_i if max < concat.to_i
  end
  i += 1
end
puts max