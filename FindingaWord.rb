w = gets.chomp
str = ""
while line = gets
  break if line.chomp == "END_OF_TEXT"
  str << line
end
puts str.downcase.split(" ").count(w)
