SQUARES = [[0,1],[0,4],[0,6],[1,6],[2,5],[3,6],[4,6],[6,4],[8,1]]

def check(first_pattern,second_pattern)
  a,b = [],[]
  (0..8).to_a.each do |num|
    a << num if first_pattern[num] == 1
    b << num if second_pattern[num] == 1
  end
  flag = true
  SQUARES.each do |left,right|
    flag = false unless (a.include?(left) && b.include?(right)) || (a.include?(right) && b.include?(left))
  end
  flag
end
ans = 0
[0,1].repeated_permutation(9).each do |first_pattern|
  [0,1].repeated_permutation(9).each do |second_pattern|
    ans += 1 if check(first_pattern,second_pattern)
  end
end
puts ans