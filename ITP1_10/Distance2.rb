include Math
n = gets.to_i
x = gets.split(" ").map(&:to_i)
y = gets.split(" ").map(&:to_i)
d1 = 0.0
d2 = 0.0
d3 = 0.0
d4 = []
n.times do |i|
  d1 += (x[i] - y[i]).abs
  d2 += ((x[i] - y[i]).abs)**2
  d3 += ((x[i] - y[i]).abs)**3
  d4 << (x[i] - y[i]).abs
end
puts sprintf("%.5f", d1.to_f)
puts sprintf("%.5f", sqrt(d2.to_f))
puts sprintf("%.5f", (d3.to_f)**(1.0/3.0))
puts sprintf("%.5f", d4.max)
