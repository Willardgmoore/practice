class Dragon

  def initialize name
    @name = name 
    @asleep = false
    @stuff_in_belly       = 10  # He's full.
    @stuff_in_intestine   = 0 #He doesn't need to go

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do 
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off..'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  def bored
    filled_time = ["killed a cat", 
      "burned down a nearby house",
      "sharpened his nails on the side of your car",
      "set fire to the rug",
      "ate a pair of your shoes",
      "broke the sink",
      "got into the trash",
      "flew into the ceiling fan",
      "ate your food off of the counter",
      "tore up some of your clothes to make a small bed",
      "bit the mailman",
      "dug a hole in the backyard."]
      2.times do
        passage_of_time
      end
      puts "#{@name} is bored. He is a high maintance pet."
      puts "#{@name} #{filled_time[rand(filled_time.length)]}."
      puts
    end
  end

  private
  # => "private" meanse that the methods defined here are 
  # => methods internal to the object. (You can feed your
  # => dragon, but you can't ask him whether he's hungry.)

  def hungry?
    # => Method names can end with "?".
    # => Usually, we do this only if the methods
    # =>  returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # => Move food from belly to intestine.
      @stuff_in_belly     -= 1
      @stuff_in_intestine += 1
    else  #Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving!  In desperation, he ate YOU!"
      exit  # => This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops!  #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance.."
    end
  end
end
end

class Game
def initialize
  introduce_game
  @pet = Dragon.new "#{$name}"
  game
end

def introduce_game
  puts "Congraduations, It's a baby dragon."
  puts "What will you call him?"
  $name = gets.chomp.capitalize
  puts
  puts "#{$name} is a perfect name."
  puts "If you ever have any questions just say 'help'."
  puts "I'll be right here for you. Best of luck!"
  puts
end

def input(string)
  if string == "put to bed"
    @pet.put_to_bed
  elsif string == "walk"
    @pet.walk
  elsif string == "feed"
    @pet.feed
  elsif string == "toss"
    @pet.toss
  elsif string == "rock"
    @pet.rock
  elsif string == "help"
    help
  elsif string == "exit"
    puts "Good Bye!"
    puts "#{$name} will miss you!"
    exit
  else 
    puts "Unrecognized input,"
    puts "Try 'help' if you are stuck"
    puts
    @pet.bored
  end
end

def help
  puts "You can type any of the following:"
  puts "Walk, Feed, Toss, Put to bed, Rock, Help or Exit"
  puts
  @pet.bored
end

def game
  while true
    user_input = gets.chomp.downcase



    input(user_input)
    puts
  end
end
end

Game.new