try do
  _n = 5 / 0
rescue
  _e in ArithmeticError -> "Tried to divide by 0"
  _ -> "Unhandled error"
end
