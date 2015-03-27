include Math
while line = gets.chomp
  n = line.to_i
  break if n == 0
  s = gets.split(" ").map(&:to_f)
  m = s.inject(:+) / n
  a2 = 0.0
  n.times do |i|
    a2 += (s[i]-m)**2
  end
  puts sprintf("%.4f", sqrt(a2 / n))
end
