songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

def list(songs)
	songs.each do |song, i|
		puts "#{i+1}. #{song}"
	end
end

def input
	gets.downcase.strip
end

loop do
	puts "Please enter a command:"
	command = input
	case command
		when "play"
			puts "What songwoudl you like to play? By # please."
			list(songs)
			song_selection = input
			puts "Playing #{songs[song_selection.to_i-1]}..."
		when "exit"
			puts "Goodbye!"
			break
		when "list"
			list(songs)
		when "help"
			puts "I support help, play, exit and list"
	end
end