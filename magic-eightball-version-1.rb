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
    "Reply is hazy try again",
    "Ask again later",
    "Better not tell you now",
    "I cannot predict the future",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook is not so good",
    "Very doubtful"
  ]
@answer_array_clone = @answer_array.clone
def user_input
    puts "Enter answer.."
    input = gets.to_s
     @answer_array_clone << input
     print_array
    second_menu

end
def print_array
  puts "Do you want to see the possible answers?"
      answer = gets.strip
      if answer.downcase =="yes"
         puts @answer_array_clone
         sleep(2)
         second_menu
      else
        second_menu
      end

end


def second_menu
  puts "----Magic Eight Ball----"
  puts "To ask another question ask it, Type enter to input your own answer or Type quit to exit."
    question = gets.strip
  if question.downcase == "quit"
    puts "Thanks for Playing!"
    exit
  elsif question.downcase == "enter"
    puts "Enter your answer"
    user_input

  elsif question == "Will I make it through this class?"
    puts "Deciding..."
    sleep (3)
    puts "The world will never know!"
    sleep (1)
    second_menu
  else
  process
  end
end


def process
  puts "Deciding..."
  sleep (2)
  puts @answer_array.sample
  if @quit == true
    second_menu
  end
end

def print_menu
  puts "----Magic Eight Ball----"
  puts "Ask a question?"
  question = gets.strip
  if question == "Will I make it through this class?"
    puts "Deciding..."
    sleep (3)
    puts "The world will never know!"
  else
    process
  end
  @quit = true
end

@quit = false
print_menu
sleep (2)
second_menu
