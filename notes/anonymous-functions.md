# Anonymous Functions #

## Definition

    iex> sum = fn (a, b) -> a + b end

## You still need parentheses when invoking functions

    iex> greet = fn -> IO.puts "Hello" end
    iex> greet.()
    
## Parentheses around parameters in a function definition are optional

    iex> f1 = fn a, b -> a * b end

## Functions and pattern matching

    iex> swap = fn { a, b } -> { b, a } end
    
## Functions returning functions

    iex> fun1 = fn -> fn -> 'Hello' end end
    iex> fun1.()
    iex> fun1.().()

## Functions remember their original environment (lexical scope)

    iex> greeter = fn name -> ( fn -> "Hello #{name}" end ) end
    iex> dave_greeter = greeter.("Dave")
    iex> dave_greeter.()

