seventeen_ans_list = []
i = 1
while i*17 < 1000
  num_s = (i*17).to_s.chars
  num_s.unshift("0") if i*17 < 100
  if num_s.uniq.size == 3
    seventeen_ans_list << num_s
  end
  i += 1
end
j = 1
thirteen_ans_list = []
while j*13 < 1000
  num_s = (j*13).to_s.chars
  num_s.unshift("0") if j*13 < 100
  if num_s.uniq.size == 3
    seventeen_ans_list.each do |seq|
      if num_s[1] == seq[0] && num_s[2] == seq[1]
        list = num_s
        list << seq[-1]
        thirteen_ans_list << list
      end
    end
  end
  j += 1
end
k = 1
eleven_ans_list = []
while k*11 < 1000
  num_s = (k*11).to_s.chars
  num_s.unshift("0") if k*11 < 100
  if num_s.uniq.size == 3
    thirteen_ans_list.each do |seq|
      if num_s[1] == seq[0] && num_s[2] == seq[1]
        list = num_s
        list << seq[-2]
        list << seq[-1]
        eleven_ans_list << list
      end
    end
  end
  k += 1
end
seven_ans_list = []
l = 0
while l*7 < 1000
  num_s = (l*7).to_s.chars
  num_s.unshift("0") if l*7 < 10
  num_s.unshift("0") if l*7 < 100
  if num_s.uniq.size == 3
    eleven_ans_list.each do |seq|
      if num_s[1] == seq[0] && num_s[2] == seq[1]
        list = num_s
        list << seq[-3]
        list << seq[-2]
        list << seq[-1]
        seven_ans_list << list
      end
    end
  end
  l += 1
end
m = 0
five_ans_list = []
while m*5 < 1000
  num_s = (m*5).to_s.chars
  num_s.unshift("0") if m*5 < 10
  num_s.unshift("0") if m*5 < 100
  if num_s.uniq.size == 3
    seven_ans_list.each do |seq|
      if num_s[1] == seq[0] && num_s[2] == seq[1]
        list = num_s
        list << seq[-4]
        list << seq[-3]
        list << seq[-2]
        list << seq[-1]
        five_ans_list << list
      end
    end
  end
  m += 1
end
n = 0
three_ans_list = []
while 3*n < 1000
  num_s = (3*n).to_s.chars
  num_s.unshift("0") if 3*n < 10
  num_s.unshift("0") if 3*n < 100
  if num_s.uniq.size == 3
    five_ans_list.each do |seq|
      if num_s[1] == seq[0] && num_s[2] == seq[1]
        list = num_s
        list << seq[-5]
        list << seq[-4]
        list << seq[-3]
        list << seq[-2]
        list << seq[-1]
        three_ans_list << list
      end
    end
  end
  n += 2
end

p five_ans_list
p three_ans_list