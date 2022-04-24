attempts = ["319","680","180","690","129","620","762","689","762","318","368","710","720","710","629","168","160","689","716","731","736","729","316","729","729","710","769","290","719","680","318","389","162","289","162","718","729","319","790","680","890","362","319","760","316","729","380","319","728","716"].map(&:chars).map{|nums| nums.map(&:to_i)}
list = Array.new(10) {Array.new(10) {0}}
attempts.each do |nums|
  list[nums[0]][nums[1]] += 1
  list[nums[0]][nums[2]] += 1
  list[nums[1]][nums[2]] += 1
end
list.each_with_index do |num,id|
  puts id.to_s + "の右側"
  num.each_with_index do |anum,idd|
    puts idd.to_s + "は" + anum.to_s + "個" if anum != 0
  end
  puts '==='
end
p attempts