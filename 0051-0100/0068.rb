def distribute(a)
  [
    [a[0],a[1],a[2]],
    [a[3],a[2],a[4]],
    [a[5],a[4],a[6]],
    [a[7],a[6],a[8]],
    [a[9],a[8],a[1]]
  ]
end

def check(distribute)
  distribute.map{|line| line.sum}.uniq.size == 1
end

def deform(distribute)
  min = 11
  min_id = 0
  distribute.each_with_index do |line,id|
    if line[0] < min
      min = line[0]
      min_id = id
    end
  end
  str = ""
  5.times do |i|
    str += distribute[(i+min_id)%5].map(&:to_s).join
  end
  str.to_i
end

ans = 0
(1..10).to_a.permutation(10).each do |pattern|
  dist = distribute(pattern)
  next unless check(dist)
  ans = deform(dist) if (ans < deform(dist) && deform(dist) < 10**16)
end
puts ans