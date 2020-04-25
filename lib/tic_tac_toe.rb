WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5]  # Middle row
  # ETC, an array for each win combination
  [6,7,8]
  [0,3,6]
  [1,4,7]
  [2,5,8]
  [0,4,8]
  [2,4,8]
]

def display_board(board)
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def input_to_index(user_input)
  index = user_input.to_i -1
end

def move(board, index, character)
  board[index] = character
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(1,9)
    if !(board[index] == "X" || board[index] == "O")
      true
    else
      false
    end
  else
    false
  end
end

def turn(board)
  puts "Please Enter 1-9: "
  index = input_to_index(gets.chomp)
  if valid_move? (board, index)
    move(board, index)
    display_board(board)
  else
    turn(board, index)
  end
end

















    
  
      
  
    
  

























  

