require 'pry'

def rand2choice(num)
  if num == 1
    return "r"
  elsif num == 2
    return "p"
  elsif num == 3
    return "s"
  end
end

def choice2word(str)
  if str == "r"
    return "Rock"
  elsif str == "s"
    return "Scissors"
  elsif str == "p"
    return "Paper"
  end
end

def compare(player, computer)
  #if player chooses rock
  if player == "r"
    if computer == "r"
      return "It's a tie!"
    elsif computer == "p"
      return "You lose!"
    elsif computer == "s"
      return "You win!"
    end

  elsif player == "p"
    if computer == "r"
      return "You win!"
    elsif computer == "p"
      return "It's a tie!"
    elsif computer == "s"
      return "You lose!"
    end

  elsif player == "s"
    if computer == "r"
      return "You lose!"
    elsif computer == "p"
      return "You win!"
    elsif computer == "s"
      return "It's a tie!"
    end
  end

end


puts "Lets play Paper Rock Scissors!"
playing = true


while playing == true
  puts "Please choose one: (P/R/S)"
  choice_player = gets.chomp

  while !["r", "s", "p"].include?(choice_player.downcase)
      #binding.pry
      puts "Please enter one of the following choices:(P/R/S)"
      choice_player = gets.chomp
  end

  rand_num = rand(1..3) #generate a random number
  choice_computer = rand2choice(rand_num) #convert number into a choice

  msg = compare(choice_player, choice_computer) #call compare method

  puts "You choose #{choice2word(choice_player)}, the computer choose #{choice2word(choice_computer)}, #{msg}" #print out message to user

  puts "Play again?"
  choice_player == gets.chomp

  if !["y","n"].include?(choice_player.downcase)
  #if choice_player.downcase != "y" || choice_player.downcase != "n"
    begin
      puts "Please enter one of the following choices:(Y/N)"
      choice_player = gets.chomp
    end while !["y","n"].include?(choice_player.downcase)
  end

  break if choice_player == "n"

end
