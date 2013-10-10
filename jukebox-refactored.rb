songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

class Jukebox
  attr_accessor :library

  def initialize(songs)
    @library = songs
  end

  def list
    self.library.each_with_index do |song, i|
      puts "#{i+1}. #{song}"
    end
  end
   
  def input
    gets.downcase.strip
  end
   
  def play
    puts "What song would you like to play? By # please."
    list

    song_selection = input
    
    begin
      song_selection = Integer(song_selection)
    rescue
    end
   
    if song_selection.is_a?(Integer)
      puts "Playing #{self.library[song_selection.to_i-1]}..."
    else
      puts song_selection if self.library.include?(song_selection)
    end
    
  end
   
  def call
    loop do
      puts "Please enter a command:"
      command = input
      case command
      when "play"
        play
      when "exit"
        puts "Goodbye!"
        break
      when "list"
        list
      when "help"
        puts "I support help, play, exit and list"
      else
        puts "What are you talking about?"
      end
    end
  end
end

j = Jukebox.new(songs)
j.call