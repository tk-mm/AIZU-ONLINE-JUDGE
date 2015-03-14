a,b,c = gets.split().map(&:to_i)
array = [a, b, c]
array.sort!
puts "#{array[0]} #{array[1]} #{array[2]}"
