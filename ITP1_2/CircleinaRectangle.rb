w, h, x, y, r = gets.split().map(&:to_i)
if r > x || (w - r) < x || r > y || (h - r) < y
  puts "No"
else
  puts "Yes"
end
