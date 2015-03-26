str = gets.to_s
q = gets.to_i
q.times do
  c = gets.split(" ").map(&:to_s)
  word = str.split("").map(&:to_s)
  tmp = ""
  if c[0] == "replace"
    s = c[3].split("").map(&:to_s)
    index = 0
    c[1].to_i.upto(c[2].to_i) do |i|
      word[i] = s[index]
      index += 1
    end
    word.each do |v|
      tmp << v
    end
    str = tmp
  elsif c[0] == "reverse"
    c[1].to_i.upto(c[2].to_i) do |i|
      tmp << word[i]
    end
    tmp2 = tmp.reverse
    str = str.gsub(tmp, tmp2)
  elsif c[0] == "print"
    c[1].to_i.upto(c[2].to_i) do |i|
      tmp << word[i]
    end
    puts tmp
  end
end
