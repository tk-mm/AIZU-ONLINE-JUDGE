obj = {}
('a'..'z').each do |s|
  obj[s] = 0
end

while line = gets
  line.chomp.downcase.chars do |key|
    obj[key] += 1 if /[a-z]/ === key
  end
end

obj.each do |key, val|
  puts "#{key} : #{val}"
end
