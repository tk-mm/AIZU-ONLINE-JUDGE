include Math
a,b,c = gets.split(" ").map(&:to_f)
c = PI / 180 * c
puts sprintf("%.4f", a*b*sin(c)/2)
puts sprintf("%.4f", a+b+sqrt(a*a+b*b-2*a*b*cos(c)))
puts sprintf("%.4f", b*sin(c))
