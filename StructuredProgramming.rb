n = gets.to_i
1.upto(n) do |i|
  print " #{i.to_s}" if (i % 3 == 0) || i.to_s.include?("3")
end
