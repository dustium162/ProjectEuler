require 'date'
ans = 0
day = Date.new(1901,1,1)
while day.year != 2001
  ans += 1 if day.sunday? && day.day == 1
  day = day.next_day(1)
end
puts ans