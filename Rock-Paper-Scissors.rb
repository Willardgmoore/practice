puts "=============================="
puts "Rock, Paper, Scissors...Throw!"
puts "=============================="
puts
$wins = 0
$losses = 0
$draw = 0

def game
  rps_array = ["Rock","Paper","Scissors"]
  player_1 = ""
  player_2 = (rps_array.sample).to_s

  until rps_array.include?(player_1)
    puts "#{rps_array[0]}, #{rps_array[1]} or #{rps_array[2]}?"
    player_1 = gets.chomp.capitalize

    if player_1 == "R"		## quick letter mode
      player_1 = "Rock"
    elsif player_1 == "P"
      player_1 = "Paper"
    elsif player_1 == "S"
      player_1 = "Scissors"
    end
  end
  puts
  puts player_1 +" vs "+ player_2

  if player_1 == player_2     # Win/Lose/Draw Algorythm
    puts "Draw"
    $draw+=1
  elsif (player_1 == "rock" and player_2 == "scissors") ||
    (player_1 == "paper" and player_2 == "rock") || 
    (player_1 == "scissors" and player_2 == "paper")
    puts "You win!"
    $wins+=1
  else
    puts "You lose!"
    $losses+=1
  end
  puts "Wins: #{$wins} Losses:#{$losses} Draw:#{$draw}"
  puts

again?
end

def again?
    # Play again function  
  puts "Play Again? Y/N"
  play_game = gets.chomp.upcase

  if play_game == "N"

    if $wins > $losses # End announcement
      $outcome = "Won!"
    elsif $losses > $wins
      $outcome = "Lost."
    else
      $outcome = "quitter!"
      puts "We were barely getting started!"
    end
    puts "You #{$outcome} #{$wins} to #{($wins + $losses)}."

   # puts "Final Score: #{$wins} to #{($wins + $losses)}, #{($wins / ($wins + $losses))}"
  else #play_game == "Y"
    game
  end
end

game