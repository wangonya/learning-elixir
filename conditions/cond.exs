cond do
  2 + 2 == 5 ->
    "not true"

  2 * 2 == 3 ->
    "not true"

  1 + 1 == 2 ->
    IO.puts("This is #{1 + 1 == 2}")
end
