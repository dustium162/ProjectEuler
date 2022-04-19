cubes = ["0"]
n = 1
ans = 0
while true
  cube = (n**3).to_s.chars.sort.join
  cubes << cube
  list = []
  cubes.each_with_index do |cube_c,id|
    list << id**3 if cube == cube_c
  end
  if list.size == 5
    puts list.min
    exit
  end
  n += 1
end