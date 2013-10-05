# Download Gist: https://gist.github.com/scottcreynolds/e6534b284373efe0ba6e/download
# Build a Jukebox

# create a file jukebox.rb

# When that program is run, it should introduce itself
# to the user and accept input from the user using the gets command.

puts "Welcome to the Jungle... err Jukebox! :D"
puts "Type 'help' for a list of commands."

# The jukebox should respond to 4 commands, help, play, list and exit.

def jukebox(songs)
  jukebox_on = true
  
  while jukebox_on
    puts "Enter a command."
    input = gets.strip.downcase
    case input
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
        puts "Type in 'play <song number>' or 'play <song name>' to play a song."
      when "exit"
        jukebox_on = false
        exit
      else
        puts "Your input was invalid. Type help for more help."
    end
  end
end

  # The help command should output instructions for the user
  # on how to use the jukebox.

def help
  puts "Type one of the 4 commands: 'help', 'play <song number or name>', 'list', or 'exit'."
end

  # The list command should output a list of songs that the
  # user can play.

def list(songs)
  songs.each do |song|
    puts "Song: #{song}, Song Number #{songs.index(song)}"
  end 
end

  # the play command should accept a song, either by number/index
  # or name. Once the user has indicated which song they want to
  # play, the jukebox should output 'Playing The Phoenix - 1901'
  # or whatever song name is important.

def play(songs)
  puts "Enter a song number or a song name"
  input = gets.chomp
    if songs.include?(input)
      puts "Playing #{input}."
    elsif input.to_i < songs.length
      puts "Playing #{songs[input.to_i]}."
    else
      puts "Invalid input. Look at the list again and select a valid song."
    end
end

  # if the user types in exit, the jukebox should say goodbye
  # and the program should shut down.

def exit
  puts "Thanks for using the Jukebox!"
end
# Think about the following things

# How to keep the program running until the exit command is
# executed (Hint: Loop maybe? Loop upon a condition)

# How to normalize the user's input so LIST and list are the
# same. (Hint, maybe downcase and strip it)

# How to give the songs an "index" so that when you list them
# out, you can refer to them by position so the user can just
# type play 1 and then you find the first song. (Hint, check
# out a method called each_with_index)

songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

jukebox(songs)