array = []

n = gets.to_i

n.times do
  array << gets.chomp
end

["S", "H", "C", "D"].each do |m|
  (1..13).each do |i|
    card =  "#{m} #{i}"
    puts card unless array.include?(card)
  end
end
