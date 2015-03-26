str = ""
n = gets.to_i
a = gets.split.map(&:to_i)
a.reverse!
n.times do |i|
  str << "#{a[i]} "
end
puts str.chop!
