n,m,l = gets.split.map(&:to_i)
a = Array.new(n).map { Array.new(m, 0) }
b = Array.new(m).map { Array.new(l, 0) }

n.times do |i|
  tmp = gets.split.map(&:to_i)
  m.times do |mi|
    a[i][mi] += tmp[mi]
  end
end

m.times do |i|
  tmp = gets.split.map(&:to_i)
  l.times do |li|
    b[i][li] += tmp[li]
  end
end

n.times do |ni|
  ans = ""
  l.times do |li|
    sum = 0
    m.times do |mi|
      sum += a[ni][mi] * b[mi][li]
    end
    ans << "#{sum} "
  end
  puts ans.chop!
end
