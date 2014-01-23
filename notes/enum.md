# Enum #

## Processing collections

    iex> list = Enum.to_list 1..5
    iex> Enum.concat([1,2,3], [4,5,6])
    iex> Enum.map(list, &(&1 * 10))
    
## Selection

    iex> Enum.at(10..20, 3)
    iex> Enum.at(10..20, 20)
    iex> Enum.at(10..20, 20, :no_one_here)
    iex> Enum.filter(list, &Integer.even?/1)
    iex> Enum.reject(list, &Integer.even?/1)

## Sort and compare

## Join

## Predicate operations

## Merge

## Fold
    
## Ampersand operator
