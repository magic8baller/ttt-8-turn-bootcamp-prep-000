def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts separate = "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separate
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(user_input)
  user_input.to_i - 1
end


def move(board, index, player = "X")
  board[index] = player
end


def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  end
end

def position_taken?(board, index)
  if (board[index] ==  " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end
#advanced solution w/ ternary op (?; false : true)
#(board[index] ==  " " || board[index] == "" || board[index] == nil)
#false : true
