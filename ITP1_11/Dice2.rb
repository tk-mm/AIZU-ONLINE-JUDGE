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
end

a,b,c,d,e,f = gets.split(" ").map(&:to_i)
dice = Dice.new(a,b,c,d,e,f)
gets.to_i.times do |i|
  cmd1, cmd2 = gets.split(" ").map(&:to_i)
  if dice.right == cmd1
    dice.west
  elsif dice.left == cmd1
    dice.east
  else
    while dice.top != cmd1
      dice.north
    end
  end
  while dice.front != cmd2
    dice.spin
  end
  puts dice.right
end
