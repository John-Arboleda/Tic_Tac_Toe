module GameLogic
  def check_winner(array)
    win_lines = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    win_lines.each do |sub_array|
      checker = sub_array.all? { |item| array[item] == array[sub_array[0]] }
      return array[sub_array[0]] if checker
    end
    false
  end
end
