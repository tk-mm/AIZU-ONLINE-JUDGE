while n = gets.to_i
  count = 0
  10.times do |a|
    10.times do |b|
      10.times do |c|
        10.times do |d|
          count += 1 if (a+b+c+d) == n
        end
      end
    end
  end
  puts count
end
