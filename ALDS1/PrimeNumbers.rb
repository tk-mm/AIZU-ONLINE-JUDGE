require 'prime'
n = gets.to_i
c = 0
n.times do 
  pr = gets.to_i
  c += 1 if pr.prime?
end
puts c
