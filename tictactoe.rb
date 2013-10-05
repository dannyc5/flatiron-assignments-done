=begin
This is code for a tic-tac-toe game, by Daniel Chang
=end

#SETUP: Define Variables needed for game
$game_over = false #Will change to true if method check below evals to True
$winner = "Winner" #Name of $winner. Default is $winner
$current_turn = "X" #Start with team X
$gb = ["0", "1", "2", "3", "4", "5", "6", "7", "8"] #$gb = game board. Indices represent the boxes: Row 1 = 0,1,2 Row2= 3,4,5 Row3= 6,7,8


# SETWIN: used with checkWin method below. sets $winner and ends game
def setWin
	$winner = $current_turn
	$game_over = true
end

#CHECK_AND_MARK_SPACE: Checks a space that the user wishes to occupy and marks it X/O if it's still blank
def checkAndMarkSpace
  puts "What box do you want to take? Enter a number 0-8."
  @played_space = gets.chomp #This should be class string but console keeps returning nil...
  if @played_space.to_i >= 0 && @played_space.to_i <= 8 && $gb[@played_space.to_i] == @played_space #If the # is between 0-8 and the space in the gameboard array gb is still its original number string...
    $gb[@played_space.to_i] = $current_turn #...then set the string to X or O
    checkWin
  else
    puts "Invalid box number. It is either not on the board or it is already Choose a number between 0 and 8"
    checkAndMarkSpace
  end
end
  
# CHECKWIN: check all 8 possible win types below
def checkWin
	if $gb[0] == $gb[1] && $gb[1] == $gb[2] #Row 1 win
		setWin
    switchTurn
	elsif $gb[3] == $gb[4] && $gb[4] == $gb[5] #Row 2 win
		setWin
    switchTurn
	elsif $gb[6] == $gb[7] && $gb[7] == $gb[8] #Row 3 win
		setWin
    switchTurn
	elsif $gb[0] == $gb[3] && $gb[3] == $gb[6] #Column 1 win
		setWin
    switchTurn
	elsif $gb[1] == $gb[4] && $gb[4] == $gb[7] #Column 2 win
		setWin
    switchTurn
	elsif $gb[2] == $gb[5] && $gb[5] == $gb[8] #Column 3 win
		setWin
    switchTurn
	elsif $gb[0] == $gb[4] && $gb[4] == $gb[8] #Diagonal win 1
		setWin
    switchTurn
	elsif $gb[2] == $gb[4] && $gb[4] == $gb[6] #Diagonal win 2
		setWin
    switchTurn
	end		
end

#SWITCHTURN: Ends game or switches turn
def switchTurn
	if $game_over == true
		return "The $winner is #{$winner}!"
  elsif $current_turn == "X"
		$current_turn == "O"
		checkAndMarkSpace
  elsif $current_turn == "O"
		$current_turn == "X"
		checkAndMarkSpace
  end
end

=begin
Full cycle looks like this:
1. Player chooses a space on the board and program checks if it's valid or occupied. --> RUN checkAndMarkSpace
2. checkAndMarkSpace runs checkWin for 3 in a row. --> RUN checkWin
2a. If there's a win, then checkWin will setWin.
3. Switch Turn (either switches turn or ends game] --> RUN checkAndMarkSpace again or put who the $winner is. 
=end
checkAndMarkSpace