# Elixir Basics #

## Regular expressions

    iex> h(Regex)
    iex> Regex.run %r/[aeiou]/, "caterpillar"
    iex> Regex.scan %r/[aeiou]/, "caterpillar"
    
## Binaries

    iex> bin = << 1, 2 >>
    iex> size bin
    iex> bin = << 3 :: size(2), 5 :: size(4), 1 :: size(2) >>
    iex> io.format("~-8.2b~n", :binary.bin_to_list(bin))
    iex> size bin
