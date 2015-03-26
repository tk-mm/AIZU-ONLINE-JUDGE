n,m = gets.split.map(&:to_i)
a = n.times.map { gets.split.map(&:to_i) }
b = m.times.map { gets.to_i }

a.each do |va|
  sum = 0
  va.zip(b).each do |vaij, vb|
    sum += vaij * vb
  end
  puts sum
end
