def check(n)
  sqrt = Math.sqrt(n).ceil
  list = []
  i = 1
  while i <= sqrt
    if n % i == 0
      list << i
      list << n/i
    end
    i += 1
  end
  list = list.uniq.sort
  list.pop
  list.sum > n
end
n = 2
abundant_numbers = []
while n < 28123
  abundant_numbers << n if check(n)
  n += 1
end
size = abundant_numbers.size
sums_of_two_abundant_numbers = []
i = 0
while i < size
  j = 0
  while j < size
    sums_of_two_abundant_numbers << abundant_numbers[i] + abundant_numbers[j] if abundant_numbers[i] + abundant_numbers[j] <= 28123
    j += 1
  end
  i += 1
end
puts 28123*28124/2 - sums_of_two_abundant_numbers.uniq.sum