a = []
loop do
  n, x = gets.split.map(&:to_i)
  break if n == 0 && x ==0
  way = 0
  1.upto(n) do |i|
    a[i-1] = i.to_i
  end
  a.combination(3).each do |j|
    if j[0]+j[1]+j[2] == x
      way += 1
    end
  end
  puts way
end
