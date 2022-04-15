list = []
a = 1
while a < 10**3
  b = a
  while b < 10**4
    if (a * b).to_s.chars.size + a.to_s.chars.size + b.to_s.chars.size == 9
      if ((a * b).to_s.chars | a.to_s.chars | b.to_s.chars).map(&:to_i).sort == (1..9).to_a
        list << a*b
      end
    end
    b += 1
  end
  a += 1
end
puts list.uniq.sum