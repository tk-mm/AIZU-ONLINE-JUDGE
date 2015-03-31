class Dice
  attr_accessor :top, :front, :right, :left, :back, :bottom
  def initialize a,b,c,d,e,f
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
end

a,b,c,d,e,f = gets.split(" ").map(&:to_i)
dice = Dice.new(a,b,c,d,e,f)
cmd = gets.split("").map(&:to_s)
cmd.each do |v|
  case v
  when "N"
    dice.north
  when "E"
    dice.east
  when "W"
    dice.west
  when "S"
    dice.south
  end
end
puts dice.top
