defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end

IO.puts(Math.sum_list([1, 2, 3], 0))

# sum_list [1, 2, 3], 0
# sum_list [2, 3], 1
# sum_list [3], 3
# sum_list [], 6
# When the list is empty, it will match the final clause 
# which returns the final result of 6.
#
# The process of taking a list and mapping over it is known as a map algorithm.
