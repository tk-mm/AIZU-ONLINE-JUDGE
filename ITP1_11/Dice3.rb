class Dice
  attr_accessor :top, :front, :right, :left, :back, :bottom
  def initialize(a,b,c,d,e,f)
    @top = a
    @front = b
    @right = c
    @left = d
    @back = e
    @bottom = f
  end
  def north
    tmp = @top
    @top = @front
    @front = @bottom
    @bottom = @back
    @back = tmp
  end
  def east
    tmp = @top
    @top = @left
    @left = @bottom
    @bottom = @right
    @right = tmp
  end
  def west
    tmp = @top
    @top = @right
    @right = @bottom
    @bottom = @left
    @left = tmp
  end
  def south
    tmp = @top
    @top = @back
    @back = @bottom
    @bottom = @front
    @front = tmp
  end
  def spin
    tmp = @front
    @front = @left
    @left = @back
    @back = @right
    @right = tmp
  end
  def ==(other)
    other.top == @top && other.front == @front && other.left == @left && other.right == @right && other.left == @left && other.back == @back && other.bottom == @bottom
  end
  def show
    printf("%d %d %d %d %d %d\n",@top,@front,@right,@left,@back,@bottom)
  end
  def judge(hoge)
    puts hoge
  end
end

a1,b1,c1,d1,e1,f1 = gets.split(" ").map(&:to_i)
dice1 = Dice.new(a1,b1,c1,d1,e1,f1)
a2,b2,c2,d2,e2,f2 = gets.split(" ").map(&:to_i)
dice2 = Dice.new(a2,b2,c2,d2,e2,f2)             
puts "============="

judge = false

4.times do
  dice1.spin
  dice1.show
  judge = true if dice1.==(dice2)
  dice1.judge(judge.to_s)
end
puts "============="
dice1.east
4.times do
  dice1.spin
  dice1.show
  judge = true if dice1.==(dice2)
  dice1.judge(judge.to_s)
end
puts "============="
dice1.east
4.times do
  dice1.spin
  dice1.show
  judge = true if dice1.==(dice2)
  dice1.judge(judge.to_s)
end
puts "============="
dice1.east
4.times do
  dice1.spin
  dice1.show
  judge = true if dice1.==(dice2)
  dice1.judge(judge.to_s)
end
puts "============="
dice1.east
dice1.north
4.times do
  dice1.spin
  dice1.show
  judge = true if dice1.==(dice2)
  dice1.judge(judge.to_s)
end
puts "============="
dice1.north
dice1.north
4.times do
  dice1.spin
  dice1.show
  judge = true if dice1.==(dice2)
  dice1.judge(judge.to_s)
end       
puts "============="
puts judge ? "Yes" : "No"
=begin

5.times do |i|
  if dice1.top != dice2.top && dice1.bottom != dice2.bottom
    if i == 0 || i == 4
      dice2.north
    else 
      dice2.west
    end
  end
end
3.times do
  if dice1.front != dice2.front && dice1.right != dice2.right && dice1.left != dice2.left && dice1.back != dice2.back
    dice2.spin
  end
end
if dice1.top == dice2.top && dice1.front == dice2.front && dice1.right == dice2.right && dice1.left == dice2.left && dice1.back == dice2.back && dice1.bottom == dice2.bottom
  puts "Yes"
else
  puts "No"
end

=end

