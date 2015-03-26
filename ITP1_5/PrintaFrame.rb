while line = gets
  h,w = line.split.map(&:to_i)
  break if h == 0 && w == 0
  puts '#'*w
  (h - 2).times do
    puts "##{ '.' * (w - 2) }#"
  end
  puts '#'*w                
  puts 
end

