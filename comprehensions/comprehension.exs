require Integer

i = for x <- [2, 4, 6], do: x * 2
IO.inspect(i)

# nested for each
j = for x <- [1, 2, 3], y <- [4, 5, 6], Integer.is_odd(x), do: x * y
IO.inspect(j)

# use into to return map instead of list
k = for x <- [1, 2, 3], into: %{}, do: {x, x + 1}
IO.inspect(k)