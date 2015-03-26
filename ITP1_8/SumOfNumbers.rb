loop do
  sum = gets.split("").map(&:to_i)
  break if sum[0] == 0
  puts sum.inject(:+)
end
