x, y = gets.split(" ").map(&:to_i)
def gcd(x, y)
  x, y = y, x if x < y
  return x if y == 0
  if x % y == 0
    y
  else
    gcd(y, x % y)
  end
end
puts gcd(x, y)
