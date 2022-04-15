require 'prime'
def calc(a,b)
  n = 0
  while true
    break if !Prime.prime?(n**2+a*n+b)
    n += 1
  end
  n
end
ans_prod = 0
max = 0
a = -999
while a < 1000
  b = -999
  while b < 1000
    num = calc(a,b)
    if max < num
      max = num
      ans_prod = a*b
    end
    b += 1
  end
  a += 1
end
puts ans_prod