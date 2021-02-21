double = Enum.map([1, 2, 3], fn x -> x * 2 end)
IO.inspect(double)

key_times_value = Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end)
IO.inspect(key_times_value)

range = Enum.map(1..3, fn x -> x * 2 end)
IO.inspect(range)

odd? = &(rem(&1, 2) != 0)
IO.inspect(Enum.filter(1..3, odd?))

# All the functions in the Enum module are eager. 
# This means that when performing multiple operations with Enum, 
# each operation is going to generate an intermediate list until we reach the result
# As an alternative to Enum, Elixir provides the Stream module which supports lazy operations
