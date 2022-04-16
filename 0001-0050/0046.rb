require 'prime'

def check(n)
  i = 1
  flag = false
  while i < n
    if Prime.prime?(i)
      flag = true if is_square((n - i)/2)
    end
    i += 2
  end
  flag
end

def is_square(num)
  n = 1
  while n**2 < num
    n += 1
  end
  n**2 == num
end

n = 3
while true
  if !Prime.prime?(n)
    break unless check(n)
  end
  n += 2
end
puts n