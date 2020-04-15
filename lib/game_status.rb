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
  WIN_COMBINATIONS.each do |win|
    puts win
  end
end

 won?(test_board)
