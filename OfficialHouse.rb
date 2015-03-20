n = gets.to_i
house = Array.new(4).map { Array.new(3).map { Array.new(10,0) } }

n.times do
  tmp = gets.split.map(&:to_i)
  b = tmp[0]
  f = tmp[1]
  r = tmp[2]
  v = tmp[3]

  house[b - 1][f - 1][r - 1] += v
end

house.each.with_index(1) do |f, i|
  f.each do |r|
    puts " " + r.join(" ")
  end
  puts "#"*20 if i < house.length
end
