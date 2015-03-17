loop do
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  1.upto(h) do |i|
    if i % 2 == 1
      a = "#."*(w/2)
      a << "#" if w % 2 == 1
      puts a
    else
      b = ".#"*(w/2)
      b << "." if w % 2 == 1
      puts b        
    end
  end
  puts
end
