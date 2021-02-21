case {1, 2, 3} do
  {4, 5, 6} ->
    IO.puts("This clause won't match")

  {1, x, 3} ->
    IO.puts("This clause will match and bind x to 2 in this clause")
    IO.puts("x = #{x}")

  _ ->
    IO.puts("This clause won't match any value")
end

case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    IO.puts("Will match")

  _ ->
    "Would match if condition abover were not satisfied"
end

f = fn
  x, y when x > 0 -> x + y
  x, y -> x * y
end

IO.puts(f.(1, 3))
IO.puts(f.(-1, 3))
