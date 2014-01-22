# Immutability #

## Reuse variables:

    iex> list1 = [3, 2, 1]
    iex> list2 = [4 | list1]

## Programming with immutability:

    iex> name = "elixir"
    iex> cap_name = String.capitalize name
    iex> name
