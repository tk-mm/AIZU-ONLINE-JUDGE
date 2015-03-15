while (x, y = gets.split(" ").map(&:to_i)) != nil
  if x == 0 && y == 0
    break
  end
  array = [x, y]
  array.sort!
  puts "#{array[0]} #{array[1]}"
end


