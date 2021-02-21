map = %{:a => 1, 2 => :b}
IO.inspect(map)

# Maps allow any value as a key.
# Maps’ keys do not follow any ordering.

get_a = Map.get(map, :a)
IO.inspect(get_a)

new_map = Map.put(map, :c, 3)
IO.inspect(new_map)

map_to_list = Map.to_list(map)
IO.inspect(map_to_list)

map = %{map | 2 => "two"}
IO.inspect(map)

# only works for atom keys
IO.puts(map.a)

users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

# get john's age
IO.puts users[:john].age

# update john's age
users = put_in(users[:john].age, 31)
IO.puts users[:john].age
