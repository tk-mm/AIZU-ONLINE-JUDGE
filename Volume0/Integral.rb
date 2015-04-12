while line = gets
  d = line.to_i
  x = d
  result = 0
  while x < 600
    result += x*x*d
    x += d
  end
  puts result
end
