ans = 0

# one digit part
one_digit = 3 + 3 + 5 + 4 + 4 + 3 + 5 + 5 + 4
ans += one_digit

# 10
ans += 3

# 11-19
eleven_to_nineteen = 6 + 6 + 8 + 8 + 7 + 7 + 9 + 8 + 8
ans += eleven_to_nineteen

# 20,30,40,...,90
two_digit_ten_multiple = 6 + 6 + 5 + 5 + 5 + 7 + 6 + 6
ans += two_digit_ten_multiple

# other_two_digit_numbers
ans += two_digit_ten_multiple * 9 + one_digit * 8

# 1-99
one_or_two_digit = ans

# 100,200,300,...,900
three_digit_hundred_multiple = one_digit + 7 * 9
ans += three_digit_hundred_multiple

# 101-199 except for 'one'
hundred_and = (7 + 3) * 99 + one_or_two_digit

# other_three_digit_numbers
ans += hundred_and * 9 + one_digit * 99

# 1000
ans += 11

puts ans