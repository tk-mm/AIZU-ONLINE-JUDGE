while line = gets
  a,b = line.split.map(&:to_i)
  sum = a + b
  puts sum.to_s.length
end
