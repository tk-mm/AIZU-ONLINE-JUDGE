n = gets.to_i
m = 100000
n.times do 
  m *= 1.05
  m = (m/1000).ceil * 1000
end
puts m
