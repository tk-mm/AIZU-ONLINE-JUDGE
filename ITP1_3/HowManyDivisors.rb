(a,b,c) = gets.split(" ").map(&:to_i)
count = 0
while a <= b
  if (c % a) == 0
    count += 1
  end
  a += 1
end         
puts count
