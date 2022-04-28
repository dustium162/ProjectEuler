# Think of making weakly increasing sequences.
# The answer is the number of these sequences.
dp = Array.new(101) {0}
dp[0] = 1
min = 1
# dp[k] (k < 100) represents the number of expression of k as a sum using numbers less than "or equal to" k, so it includes a single-number sequence (k) thet satisfies the condition.
# For we do not to count (100) as a sequence, stop min at 99.
while min < 100
  i = min
  while i <= 100
    dp[i] += dp[i-min]
    i += 1
  end
  min += 1
end
puts dp[100]
