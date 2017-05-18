#questions bank
#.sample to get random answer

  @answer_array = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
  ]

def second_menu
  puts "Magic Eight Ball"
  puts "Ask another question?"
  puts "Type quit to Exit"
    question = gets.strip
  if question.downcase == "quit"
    puts "Thanks for Playing!"
    exit
  elsif question == "secret"
    puts "You Win!!!"
  else
  process
  end
end


def process
  puts "deciding"
  sleep (2)
  puts @answer_array.sample
  if @quit == true
    second_menu
  end
end

def print_menu
  puts "Magic Eight Ball"
  puts "Ask a question?"
  question = gets.strip
  @quit = true
  process
end

@quit = false
print_menu
sleep (2)
second_menu
