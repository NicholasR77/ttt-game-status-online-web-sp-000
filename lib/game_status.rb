#Test variables

test_board  = [" ", " ", " ", "O", "O", " ", "X", "X", "X"]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  #horizontal
  [1,2,3],
  [4,5,6],
  [7,8,9],
  #vertical
  [1,4,7],
  [2,5,8],
  [3,6,9],
  #diagonal
  [1,5,9],
  [3,5,7]
]

# Define the won method
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    win_index_1 = win_combination[4]
    win_index_2 = win_combination[5]
    win_index_3 = win_combination[6]
    win_index_1 = win_combination[7]
    win_index_2 = win_combination[8]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    position_4 = board[win_index_4]
    position_5 = board[win_index_5]
    position_6 = board[win_index_6]
    position_7 = board[win_index_7]
    position_8 = board[win_index_8]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      puts win_combination # return the win_combination indexes that won.
    else
      false
    end
  end
end

 won?(test_board)
