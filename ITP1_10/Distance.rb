x1, y1, x2, y2 = gets.split(" ").map(&:to_f)
puts sprintf("%.4f", Math.sqrt(((x1 - x2)**2 + (y1 -y2)**2)))
