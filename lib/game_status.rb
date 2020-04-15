#Test variables

test_board  = [" ", " ", " ", "O", "O", " ", "X", "X", "X"]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  #horizontal
  [0,1,2],
  [3,4,5],
  [6,7,8],
  #vertical
  [0,3,6],
  [1,4,7],
  [2,5,8],
  #diagonal
  [0,4,9],
  [2,4,6]
]

# Define the won method
def won?(board)
  WIN_COMBINATIONS.each do |win|
    board.each do |position|
      if (board[position] == "X")
        puts "yay"
    end
  end
end

 won?(test_board)
