require 'prime'
while line = gets
  line = line.to_i
  puts Prime.each(line).to_a.length
end
