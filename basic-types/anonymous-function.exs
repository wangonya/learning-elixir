add = fn a, b -> a + b end

# Note that a dot (.) between the variable and parentheses 
# is required to invoke an anonymous function
IO.puts(add.(1, 2))

double = fn a -> add.(a, a) end

IO.puts(double.(2))
