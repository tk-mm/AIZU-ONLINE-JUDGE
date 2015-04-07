include Math
n = gets.to_i
n.times do 
  x1,y1,x2,y2,x3,y3 = gets.split(" ").map(&:to_f)
  a1 = 2 * (x2 - x1)
  b1 = 2 * (y2 - y1)
  c1 = x1**2 - x2**2 + y1**2 - y2**2
  a2 = 2 * (x3 - x1)
  b2 = 2 * (y3 - y1)
  c2 = x1**2 - x3**2 + y1**2 - y3**2
  x = (b1*c2 - b2*c1) / (a1*b2 - a2*b1)
  y = (c1*a2 - c2*a1) / (a1*b2 - a2*b1)
  r = sqrt((x1 - x)**2 + (y1 - y)**2)
  x = ((x*1000).round) / 1000.to_f
  y = ((y*1000).round) / 1000.to_f
  r = ((r*1000).round) / 1000.to_f
  printf("%.3f %.3f %.3f\n", x, y, r)
end
