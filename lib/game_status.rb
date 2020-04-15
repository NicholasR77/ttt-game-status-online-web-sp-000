#Test variables

test_board  = ["X", "X", "X", "O", "O", "X", "X", "X", "X"]

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
  WIN_COMBINATIONS.each {|win_combo|
    index_0 = win_combo[0]
    index_1 = win_combo[1]
    index_2 = win_combo[2]

    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      puts win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      puts win_combo
    end
  }
  return false
end

# Define the full method
def full?(board)
  board.all? do |position|
     !(position.nil? || position == " ")
  end
end

# Defines the draw method
def draw?(board)
  if (won?board == true)
    return false
  elsif (won?(board) == false && full?(board) == false)
      return false
  elsif (won?(board) == false && full?(board) == true)
      return true
  end
end
