class Dice
  attr_accessor :top, :front, :right, :left, :back, :bottom
  def initialize(a,b,c,d,e,f)
    @top = a; @front = b; @right = c; @left = d; @back = e; @bottom = f
  end
  def north
    tmp = @top; @top = @front; @front = @bottom; @bottom = @back; @back = tmp
  end
  def east
    tmp = @top; @top = @left; @left = @bottom; @bottom = @right; @right = tmp
  end
  def west
    tmp = @top; @top = @right; @right = @bottom; @bottom = @left; @left = tmp
  end
  def south
    tmp = @top; @top = @back; @back = @bottom; @bottom = @front; @front = tmp
  end
  def spin
    tmp = @front; @front = @left; @left = @back; @back = @right; @right = tmp
  end
  def ==(other)
    other.top == @top && other.front == @front && other.left == @left && other.right == @right && other.left == @left && other.back == @back && other.bottom == @bottom
  end
  def show
    printf("%d %d %d %d %d %d\n", @top, @front, @right, @left, @back, @bottom)
  end
end

n = gets.to_i
dice = Array.new(n)
n.times do |i|
 a,b,c,d,e,f = gets.split(" ").map(&:to_i)
 dice[i] = Dice.new(a,b,c,d,e,f)
end
judge = Array.new(n-1)
(n-1).times do |i|
  judge[i] = false
end

(n-1).times do |i|
  4.times do
    dice[0].spin
    judge[i] = true if dice[0].==(dice[i+1])
  end
  dice[0].east
  4.times do
    dice[0].spin
    judge[i] = true if dice[0].==(dice[i+1])
  end       
  dice[0].east
  4.times do
    dice[0].spin
    judge[i] = true if dice[0].==(dice[i+1])
  end       
  dice[0].east
  4.times do
    dice[0].spin
    judge[i] = true if dice[0].==(dice[i+1])
  end       
  dice[0].east
  dice[0].north
  4.times do
    dice[0].spin
    judge[i] = true if dice[0].==(dice[i+1])
  end 
  dice[0].north
  dice[0].north
  4.times do
    dice[0].spin
    judge[i] = true if dice[0].==(dice[i+1])
  end       
  dice[0].north
end
if judge.none?
  puts "Yes"
elsif judge.any?
  puts "No"
end
