{a, b, c} = {:hello, "world", 42}
IO.puts(a)
IO.puts(b)
IO.puts(c)

[head | tail] = [1, 2, 3]
IO.inspect(head)
IO.inspect(tail)

[head | _] = [1, 2, 3]
IO.inspect(head)

list = [4, 5, 6]
IO.inspect([0 | list])
