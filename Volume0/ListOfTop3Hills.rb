m = []
10.times do |i|
  m << gets.to_i
end
m.sort! {|a,b| b <=> a }
puts m[0]
puts m[1]
puts m[2]
