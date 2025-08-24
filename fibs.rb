def fib(pos)
  result = []
  (pos).times do |index|
    if index == 0
      result << index
    elsif index == 1
      result << index
    else
      result << result[index -1] + result[index - 2]
    end
  end
  result
end