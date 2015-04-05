gets.to_i.times do
  a,b,c = gets.split.map(&:to_i).sort!
  puts c*c == a*a + b*b ? "YES" : "NO"
end
