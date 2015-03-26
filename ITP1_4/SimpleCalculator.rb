op = ""
while op != "?"
  a, op, b = gets.split(" ")
  a = a.to_i
  b = b.to_i
  case op.to_s
  when "+" then
    puts a + b
  when "-" then
    puts a - b
  when "*" then
    puts a * b
  when "/" then
    puts a / b
  else
    break
  end
end

