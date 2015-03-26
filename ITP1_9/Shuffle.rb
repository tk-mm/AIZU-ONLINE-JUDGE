while line = gets
  break if line.chomp == "-"
  s = line.chomp.split("").map(&:to_s)
  m = gets.to_i
  m.times do
    h = gets.to_i
    h.times do
      tmp = s.shift
      s.push tmp
    end
  end
  s.each do |v|
    print v
  end
  puts
end
