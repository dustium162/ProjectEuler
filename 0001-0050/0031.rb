ans = 1
one_pound = 0
while one_pound*100 <= 200
  fifty_p = 0
  while one_pound*100 + fifty_p*50 <= 200
    twenty_p = 0
    while one_pound*100 + fifty_p*50 + twenty_p*20 <= 200
      ten_p = 0
      while one_pound*100 + fifty_p*50 + twenty_p*20 + ten_p*10 <= 200
        five_p = 0
        while one_pound*100 + fifty_p*50 + twenty_p*20 + ten_p*10 + five_p*5 <= 200
          two_p = 0
          while one_pound*100 + fifty_p*50 + twenty_p*20 + ten_p*10 + five_p*5 + two_p*2 <= 200
            ans += 1
            two_p += 1
          end
          five_p += 1
        end
        ten_p += 1
      end
      twenty_p += 1
    end
    fifty_p += 1
  end
  one_pound += 1
end
puts ans