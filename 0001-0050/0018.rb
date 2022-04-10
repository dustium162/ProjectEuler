# deleted zeros preceding numbers.
TRIANGLE = []
TRIANGLE << [75]
TRIANGLE << [95,64]
TRIANGLE << [17,47,82]
TRIANGLE << [18,35,87,10]
TRIANGLE << [20,4,82,47,65]
TRIANGLE << [19,1,23,75,3,34]
TRIANGLE << [88,2,77,73,7,63,67]
TRIANGLE << [99,65,4,28,6,16,70,92]
TRIANGLE << [41,41,26,56,83,40,80,70,33]
TRIANGLE << [41,48,72,33,47,32,37,16,94,29]
TRIANGLE << [53,71,44,65,25,43,91,52,97,51,14]
TRIANGLE << [70,11,33,28,77,73,17,78,39,68,17,57]
TRIANGLE << [91,71,52,38,17,14,91,43,58,50,27,29,48]
TRIANGLE << [63,66,4,68,89,53,67,30,73,16,69,87,40,31]
TRIANGLE << [4,62,98,27,23,9,70,98,73,93,38,53,60,4,23]
ans = 0
[true,false].repeated_permutation(14).each do |pattern|
  id = 0
  sum = 0
  pattern.each_with_index do |go_right,depth|
    sum += TRIANGLE[depth][id]
    id += 1 if go_right
  end
  sum += TRIANGLE[14][id]
  ans = sum if ans < sum
end
puts ans