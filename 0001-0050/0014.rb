i = 2
hash = {}
hash[1] = 0
while i < 10**6
  num = i
  count = 0
  while num != 1
    num = (num%2 == 0 ? num/2 : 3*num+1)
    count += 1
    if hash[num]
      hash[i] = hash[num] + count
      break
    end
  end
  hash[i] = count if num == 1
  i += 1
end
max = 0
ans = 0
hash.each do |k,v|
  if max < v
    max = v 
    ans = k
  end
end
puts ans