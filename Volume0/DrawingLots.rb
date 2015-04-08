w = gets.to_i
n = gets.to_i
result = []
1.upto(w) do |i|
  result[i-1] = i
end
n.times do
  a,b = gets.split(",").map(&:to_i)
  result[a-1], result[b-1] = result[b-1], result[a-1]
end
result.each do |v|
  puts v
end
