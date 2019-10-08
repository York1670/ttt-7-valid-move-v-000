# code your #valid_move? method here
def valid_move?(board, index)
  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else
      return true
    end
  end

  if index.between?(0,8)
    return !position_taken?(board, index)
  else
    return false
  end
end

def turn_count(board)
  turns_played = 0
  board.each do |element|
    if element == "X" || element == "O"
      turns_played += 1
    end
  end
  turns_played
end

def current_player(board)
  if turn_count(board).even?
    "X"
  else
    "O"
  end
end
