# Displays the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Decides whether a user's move is valid
def valid_move?(array, index)
  if index > 8
    return false
  else if position_taken?(array, index) == false
    return true
  else
    return false
  end
end
end

# Decides whether a position on the board is already occupided
def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    return false
  else if array[index] == "X" || array[index] == "O"
    return true
  end
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, character = "X")
  array[index]= character
end
