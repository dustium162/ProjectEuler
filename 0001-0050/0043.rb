def match(a,b)
  a[1] == b[0] && a[2] == b[1]
end
list = [2,3,5,7,11,13,17].map do |prime|
  prime_list = []
  i = 0
  while i*prime < 1000
    s = (i*prime).to_s.chars
    s.unshift("0") if s.size != 3
    prime_list << s if s.uniq.size == 3
    i += 1
  end
  prime_list
end

ans = []
list[6].each do |seventeen|
  a = seventeen.join
  list[5].each do |thirteen|
    next unless match(thirteen,seventeen)
    b = thirteen[0] + a
    list[4].each do |eleven|
      next unless match(eleven,thirteen)
      c = eleven[0] + b
      list[3].each do |seven|
        next unless match(seven,eleven)
        d = seven[0] + c
        list[2].each do |five|
          next unless match(five,seven)
          e = five[0] + d
          list[1].each do |three|
            next unless match(three,five)
            f = three[0] + e
            list[0].each do |two|
              next unless match(two,three)
              g = two[0] + f
              next if g.chars.uniq.size != 9
              first = (45 - g.chars.map(&:to_i).sum).to_s
              ans << (first + g).to_i
            end
          end
        end
      end
    end
  end
end
puts ans.sum