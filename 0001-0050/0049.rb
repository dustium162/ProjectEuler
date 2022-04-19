require 'prime'
a1 = 1001
list = []
while a1 < 9999
  if Prime.prime?(a1)
    a3 = a1 + 2
    while a3 < 9999
      if Prime.prime?((a1+a3)/2) && Prime.prime?(a3)
        if a1.to_s.chars.sort == a3.to_s.chars.sort && (((a1+a3)/2).to_s.chars.sort == a3.to_s.chars.sort)
          list << [a1,(a1+a3)/2,a3].map(&:to_s).join
        end
      end
      a3 += 2
    end
  end
  a1 += 2
end
p list