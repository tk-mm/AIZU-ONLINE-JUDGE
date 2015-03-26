r,c = gets.split.map(&:to_i)
table = Array.new(r).map { Array.new(c, 0) }

r.times do |i|
  tmp = gets.split.map(&:to_i)
  c.times do |j|
    table[i][j] += tmp[j]
  end
end

r.times do |i|
  sum = 0
  c.times do |j|
    sum += table[i][j]
    print "#{table[i][j]} "
  end
  puts table[i].inject(:+)
end           

last = Array.new(c).map { Array.new(r, 0) }
sum = 0
c.times do |j|
  r.times do |i|
    last[j][i] += table[i][j]
  end
  sum += last[j].inject(:+)
  print "#{last[j].inject(:+)} "
end
puts sum
