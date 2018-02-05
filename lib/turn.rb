def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  board[index] != " "
end

def valid_move?(board, index)
  #index is within a range 0-8 AND board at index is not occupied
  index.between?(0,8) && !position_taken?(board, index)
end

def move( board, input_to_index, token = "X")
  board[input_to_index] = token
end
