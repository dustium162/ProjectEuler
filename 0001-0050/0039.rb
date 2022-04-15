list = []
m = 1
while m**2 < 1000
  n = m + 1
  while 2*n*(n+m) <= 1000
    list << [n**2 - m**2,2*m*n,n**2 + m**2]
    n += 1
  end
  m += 1
end
ans = Array.new(1001) {[]}
list.each do |triple|
  i = 1
  while i * triple.sum <= 1000
    ans[i*triple.sum] << triple.map{|num| num*i}
    i += 1
  end
end
ans_id = 0
max = 0
ans.each_with_index do |triples,id|
  if max < triples.uniq.size
    max = triples.uniq.size
    ans_id = id
  end
end
puts ans_id
