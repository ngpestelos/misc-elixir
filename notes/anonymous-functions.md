# Anonymous Functions #

## Definition

    iex> sum = fn (a, b) -> a + b end
    iex> sum.(1, 1)

## You still need parentheses when invoking functions

    iex> greet = fn -> IO.puts "Hello" end
    iex> greet.()

## Parentheses around parameters in a function definition are optional

    iex> f1 = fn a, b -> a * b end
    iex> f1.(5, 6)

## Functions and pattern matching

    iex> swap = fn { a, b } -> { b, a } end
    iex> list_concat = fn a, b -> a ++ b end
    iex> sum = fn a, b, c -> a + b + c end
    iex> pair_tuple_to_list = fn {a, b} -> [a, b] end

## One function, multiple bodies

    iex> fizzbuzz = fn
           0, 0, _ -> "FizzBuzz"
           0, _, _ -> "Fizz"
           _, 0, _ -> "Buzz"
           _, _, c -> c end

## Functions returning functions

    iex> fun1 = fn -> fn -> 'Hello' end end
    iex> fun1.()
    iex> fun1.().()

## Functions remember their original environment (lexical scope)

    iex> greeter = fn name -> ( fn -> "Hello #{name}" end ) end
    iex> dave_greeter = greeter.("Dave")
    iex> dave_greeter.()
