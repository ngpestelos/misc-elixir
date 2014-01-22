# Pattern Matching #

## Pattern match operator ('='):

    iex> a = 1
    iex> a + 3
    iex> a
    iex> 1 = a
    iex> 2 = a

## Re-binding

    iex> a = 2
    iex> 2 = a
    iex> 1 = a

## Match on lists:

    iex> [a,b,c] = [1,2,3]
    iex> a
    iex> b
    iex> c

## Which of the following would match?

    iex> a = [1,2,3]
    iex> a = 4
    iex> 4 = a
    iex> [a,b] = [1,2,3]
    iex> a = [[1,2,3]]
    iex> [a..5] = [1..5]
    iex> [a] = [[1,2,3]]
    iex> [[a]] = [[1,2,3]]
    iex> [[a,b,c]] = [[1,2,3]]

## Ignoring ('_'):

    iex> [a,_] = [1,2]

## Variables bind once per match:

    iex> [a,a] = [1,1]
    iex> a
    iex> [a,a] = [1,2]
