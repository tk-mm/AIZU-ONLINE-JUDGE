s = []
while line = gets
  line = line.to_i
  if line == 0
    puts s.pop
  else
    s << line
  end
end

