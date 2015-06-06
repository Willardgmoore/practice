class Player
  lives = @lives
  name = @name
  location = @location
  def initialize(name,lives,location)
    self.lives = lives
    self.name = name
    self.location = location
  end
end


class Game
  def initialize
    intro
    Player.new(@name,@lives,@location)
  end
end

M = 'walkway'
o = 'death'
@maze = [
  [o,o,o,o,M,o,o,o,o,o,o], 
  [o,o,o,M,M,M,o,o,o,o,o], 
  [o,o,o,M,o,o,o,o,M,M,o], 
  [o,o,o,M,o,o,o,o,o,M,o],
  [o,o,o,M,M,M,M,o,o,o,o], 
  [o,o,o,o,M,M,M,M,o,o,o], 
  [o,o,o,M,M,M,M,M,M,M,o], 
  [o,o,o,M,M,o,M,M,M,o,o], 
  [o,o,o,o,o,o,M,M,o,o,o], 
  [o,M,o,o,o,M,M,o,o,o,o], 
  [o,o,o,o,o,o,M,o,o,o,o]
]


def intro
  puts "Maze - A Memory Game"
  puts "===================="
  puts 
  puts "In this game you will walk across a narrow road where any wrong move will mean certain death."
  puts "What is your name?"
  @name = gets.chomp.downcase
  puts "Small, Medium, or Large maze?"
  @maze_size = gets.chomp.downcase
  puts "How many lives would you like to start with?"
  @lives = gets.chomp.to_i
  @location = [0,4]
  puts
end


def start
  idx1 = 0
  idx = 0

  spot = 'death'
  while spot == 'death'
    idx += 1    # This is first because if we're even in this loop, the first one wasn't walkway
    spot = @maze[idx1][idx]
  end
  puts spot
  #return 
  puts [idx1,idx]
end


def finish
  puts "You have won, Congrats!"
end


def move(direction)
end


def cheat
  puts "enter code:"
  code = gets.chomp
  if code == "show map"

  elsif code == "long live"
    lives += 100
  else 
    puts "Invalid Code."
  end	
end

#Game.new

start